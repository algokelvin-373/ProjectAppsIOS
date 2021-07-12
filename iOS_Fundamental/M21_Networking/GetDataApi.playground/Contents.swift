import Cocoa

let url = "https://api.rawg.io/api/games"

struct DataGame: Codable {
    let results: Array<Game>
}

struct Game: Codable {
    let name: String
}

let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
    
    guard let data = data, error  == nil else {
        print("Something when wrong")
        return
    }
    
    //have data
    var result: DataGame?
    do {
        result = try JSONDecoder().decode(DataGame.self, from: data)
    }
    catch {
        print("Failed to convert \(error.localizedDescription)")
    }
    
    guard let json = result else {
        return
    }
    print(json.results)
    
    for data in json.results {
        print("Name Games: \(data.name)")
    }
})

task.resume()


//
//  GameFavoriteCoreData.swift
//  GameCatalog
//
//  Created by Kelvin HT on 9/21/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI
import CoreData
import Combine

class GameFavoriteCoreData: ObservableObject {
    let managedContext: NSManagedObjectContext
    @Published var data = [GameFavorite]()
    
    init() {
        managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        readData()
    }
    
    func addNewData(id: Int64,title: String,image: String,date: String,rating: String) {
        let newMember = NSEntityDescription.insertNewObject(forEntityName: "GameFavorite", into: managedContext)

        newMember.setValue(id, forKey: "id")
        newMember.setValue(title, forKey: "title")
        newMember.setValue(image, forKey: "image")
        newMember.setValue(date, forKey: "date_release")
        newMember.setValue(rating, forKey: "rating")
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    func readData() {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "GameFavorite")
        
        do {
            guard let results = try managedContext.fetch(fetchRequest) as? [GameFavorite] else { return }
            
            self.data = results
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    func checkData(id: Int64) -> Bool {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "GameFavorite")
        
        fetchRequest.predicate = NSPredicate(format: "id == \(id)")
        
        do {
            guard let results = try managedContext.fetch(fetchRequest) as? [GameFavorite] else { return false }
            
            self.data = results
            
            // Giving to result check data
            if results.isEmpty {
                return false
            }
            else {
                return true
            }
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        return false
    }
    func deleteData(id: Int64) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "GameFavorite")

        fetchRequest.predicate = NSPredicate(format: "id == \(id)")

        do {
            fetchRequest.fetchLimit = 1
            guard let result = try? managedContext.fetch(fetchRequest), let gameCatalog = result.first as? GameFavorite else { return }

            managedContext.delete(gameCatalog)

            try managedContext.save()
            
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
}

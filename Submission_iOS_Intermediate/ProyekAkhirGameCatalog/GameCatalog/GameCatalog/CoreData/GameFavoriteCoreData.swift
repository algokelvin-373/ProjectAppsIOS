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
    
    func addNewData(id: UUID, name: String, aboutName: String) {
        let newMember = NSEntityDescription.insertNewObject(forEntityName: "GameFavorite", into: managedContext)

        newMember.setValue(id, forKey: "id")
        newMember.setValue(name, forKey: "name")
        newMember.setValue(aboutName, forKey: "about")
        
        do {
            try managedContext.save()
            
            print("Success input data")
            
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    func readData() {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "GameFavorite")
        
        do {
            guard let results = try managedContext.fetch(fetchRequest) as? [GameFavorite] else { return }
            
            self.data = results
            
            print("Read data success")
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    func deleteData(id: UUID) {
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

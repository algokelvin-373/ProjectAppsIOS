//
//  PlayCoreData.swift
//  m25_database_basic
//
//  Created by Kelvin HT on 8/10/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI
import CoreData
import Combine

class PlayCoreData: ObservableObject {
    let managedContext: NSManagedObjectContext
    @Published var data = [Member]()
    
    init() {
        managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        readData()
    }
    
    func addNewData(id: UUID, name: String, aboutName: String) {
        let newMember = NSEntityDescription.insertNewObject(forEntityName: "Member", into: managedContext)

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
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Member")
        
        do {
            let results = try managedContext.fetch(fetchRequest)
            
            for i in results as! [NSManagedObject] {
                self.data.append(Member(
                    id: i.value(forKey: "id") as! UUID,
                    name: i.value(forKey: "name") as! String,
                    about: i.value(forKey: "about") as! String
                ))
            }
            
            print("Read data success")
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    func deleteData() {
        
    }
}

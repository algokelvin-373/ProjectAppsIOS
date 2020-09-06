//
//  PlayCoreData.swift
//  m25_database_basic
//
//  Created by Kelvin HT on 8/10/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import SwiftUI
import CoreData

class PlayCoreData {
    func addNewData(id: Int, name: String, aboutName: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext

        let entity = NSEntityDescription.entity(forEntityName: "Member", in: managedContext)!

        let newMember = NSManagedObject(entity: entity, insertInto: managedContext)

        newMember.setValue(id, forKey: "id")
        newMember.setValue(name, forKey: "name")
        newMember.setValue(aboutName, forKey: "about")
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
}

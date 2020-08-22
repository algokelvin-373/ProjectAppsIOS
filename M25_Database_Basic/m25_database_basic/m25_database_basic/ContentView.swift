//
//  ContentView.swift
//  m25_database_basic
//
//  Created by Kelvin HT on 8/7/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Member.entity(), sortDescriptors: []) var members: FetchedResults<Member>
    
    var body: some View {
        VStack {
            List {
                ForEach(members, id: \.id) { member in
                    VStack {
                        Text(member.name ?? "Unknown")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                        Text(member.about ?? "Unknown")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                    }
                }
            }
            
            Button("Add") {
                let firstNames = ["Kelvin", "Natasha", "Thea", "Dodit", "ACI"]
                let lastNames = ["Tandrio", "Wilona", "Bernice", "Mulyanto", "GameSpot"]
                let aboutNames = ["Software Developer",
                                  "Artis",
                                  "Selebgram / Influenzer",
                                  "Comedian",
                                  "Youtuber Games"]
                
                let member = Member(context: self.moc)
                member.id = UUID()
                member.name = "\(String(describing: firstNames.randomElement()!)) \(String(describing: lastNames.randomElement()!))"
                member.about = aboutNames.randomElement()

                try? self.moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

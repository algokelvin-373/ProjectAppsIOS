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
    
    @State private var nameMember = ""
    @State private var aboutMember = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Input Your Name")) {
                    HStack {
                        VStack {
                            TextField("Name", text: self.$nameMember)
                            TextField("About", text: self.$aboutMember)
                        }
                        
                        Button(action: {
                            let member = Member(context: self.moc)
                            member.id = UUID()
                            member.name = self.nameMember
                            member.about = self.aboutMember

                            try? self.moc.save()
                        }){
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
                
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
            .navigationBarTitle(Text("My Fans"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

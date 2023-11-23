//
//  RemindersElenchi.swift
//  Reminders
//
//  Created by Benedetta Toledo on 20/11/23.
//


import SwiftUI

struct RemindersElenchi: View {
    //search bar
    @State private var searchText = ""
    @ObservedObject var reminderElenchi = reminderElenco()
    
    var body: some View {
        
        NavigationView {
            
 
            List {
                ForEach (reminderElenchi.elenchi)
                { elenco in
                    
                    HStack{
                        elenco.icon
                        Text(elenco.name)
                        NavigationLink("", destination: ContentView())
                        }
                }
            }
            
            .navigationTitle("My Lists")
            .toolbar {
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Edit Lists")
                        Image(systemName: "info.circle")})
                }
                
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Templates")
                        Image(systemName: "checkmark.circle")})
                }
                
                ToolbarItem (placement: .bottomBar)
                { Button(action: {}, label: {
                    Image (systemName: "plus.circle.fill")
                    Text("New Reminder") }) }
                
                ToolbarItem (placement: .bottomBar)
                { Button(action: {}, label: {
                    Text("Add List") }) }
            }
            
        } .searchable(text: $searchText)
    }
    
 /*   var searchResults: [String] {
        if searchText.isEmpty {
            return reminderElenco
        } else {
            return reminderElenco.filter { $0.lowercased().contains(searchText.lowercased())
            }
        }
    }*/
    
}
    #Preview {
        RemindersElenchi()
}

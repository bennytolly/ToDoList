//
//  ReminderElenchiModel.swift
//  Reminders
//
//  Created by Benedetta Toledo on 21/11/23.
//

import Foundation
import SwiftUI


// let reminderElenchi = [ "Work", "School", "Home", "Training", "Readings"]

class ReminderElenco : Identifiable {
    
    @Published var id: UUID = UUID()
    @Published var name : String
    @Published var icon : Image
   // @Published var color = Color(UIColor)
    
    init(id: UUID, name: String, icon: Image) {
        self.id = id
        self.name = name
        self.icon = icon
      //  self.color = Color(uiColor: <#T##UIColor#>)
    }
}

class reminderElenco: ObservableObject, Identifiable{
    
    @Published var elenchi = [
        ReminderElenco(id: UUID(), name: "Work", icon: Image(systemName: "lightbulb.max.fill")),
        ReminderElenco(id: UUID(), name: "School", icon: Image(systemName: "x.squareroot")),
        ReminderElenco(id: UUID(), name: "Home", icon:  Image(systemName: "house.fill")),
        ReminderElenco(id: UUID(), name: "Training", icon: Image(systemName: "figure.run")),
        ReminderElenco(id: UUID(), name: "Readings", icon: Image(systemName: "book.fill")
        )
    ]
}

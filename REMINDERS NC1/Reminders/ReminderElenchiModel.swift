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
    @Published var iconColor : Color
   // @Published var color = Color(UIColor)
    
    init(id: UUID, name: String, icon: Image, iconColor: Color) {
        self.id = id
        self.name = name
        self.icon = icon
        self.iconColor = iconColor
      //  self.color = Color(uiColor: <#T##UIColor#>)
    }
}

class reminderElenco: ObservableObject, Identifiable{
    
    @Published var elenchi = [
        ReminderElenco(id: UUID(), name: "Work", icon: Image(systemName: "lightbulb.max.fill"), iconColor: Color(.purple)),
        ReminderElenco(id: UUID(), name: "School", icon: Image(systemName: "x.squareroot"), iconColor: Color(.red)),
        ReminderElenco(id: UUID(), name: "Home", icon:  Image(systemName: "house.fill"), iconColor: Color(.orange)),
        ReminderElenco(id: UUID(), name: "Training", icon: Image(systemName: "figure.run"), iconColor: Color(.green)),
        ReminderElenco(id: UUID(), name: "Readings", icon: Image(systemName: "book.fill"), iconColor: Color(.yellow)
        )
    ]
}


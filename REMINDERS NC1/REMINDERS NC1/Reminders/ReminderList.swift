//
//  RemindersList.swift
//  Reminders
//
//  Created by Benedetta Toledo on 16/11/23.
//

import Foundation
import SwiftUI


class ReminderItem : Identifiable {
    
    @Published var id: UUID = UUID()
    @Published var name : String
    @Published var isCompleted : Bool
    
    init(id: UUID, name: String, isCompleted: Bool) {
        self.id = id
        self.name = name
        self.isCompleted = isCompleted
    }
}


class remindersModel: ObservableObject, Identifiable{
    
     @Published var reminderList = [
        ReminderItem(id: UUID(), name: "Write paper", isCompleted: true),
        ReminderItem(id: UUID(), name: "Call client", isCompleted: false),
        ReminderItem(id: UUID(), name: "Study book", isCompleted: true),
        ReminderItem(id: UUID(), name: "Send mail to Mike", isCompleted: false)
    ]
    
    
    // User intents
    func toggle(id: UUID) {
        let index = reminderList.firstIndex { $0.id == id }
        if let index {
            reminderList[index].isCompleted.toggle()
        }
    }
}





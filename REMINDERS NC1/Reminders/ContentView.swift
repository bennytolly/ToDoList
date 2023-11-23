//
//  ContentView.swift
//  Reminders
//
//  Created by Benedetta Toledo on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var showsheet = false
    @ObservedObject var reminderModel = remindersModel()
    
    var body: some View {
        
        
       // NavigationView {
            /* HStack { Spacer ()
             Menu("",systemImage: "ellipsis.circle")
             {Button("Modify list", action: {})
             Button("Models", action: {})}
             }*/
            
            List {
                ForEach (reminderModel.reminderList) { reminder in
                    Button(action: {
                        reminderModel.toggle(id: reminder.id)
                        
                        //reminder.isCompleted.toggle()
                    }){
                        HStack {
                            Image(systemName: reminder.isCompleted ? "circle.fill" : "circle")
                                .foregroundColor(.purple)
                            Text(reminder.name)
                        }
                    }
                    
                    
                    //                        if reminderModel.reminderList[index].isCompleted {
                    //                            Button (
                    //                                action: {
                    //                                    reminderModel.reminderList[index].isCompleted.toggle()
                    //                                },
                    //                                label: {
                    //                                    HStack {
                    //                                        Image(systemName: "circle.fill")
                    //                                        Text(reminderModel.reminderList[index].name)
                    //                                    }
                    //                                }
                    //                            )
                    //
                    //                        } else
                    //                    {
                    //                            Button (
                    //                                action: {
                    //                                    reminderModel.reminderList[index].isCompleted.toggle()
                    //
                    //                                },
                    //                                label: { HStack {
                    //                                    Image(systemName: "circle")
                    //                                    Text(reminderModel.reminderList[index].name)
                    //                                }
                    //                                }
                    //                            )
                    //
                    //                        }
                    
                }
                TextField("Write a new reminder", text: .constant(""))
            }
            .listStyle(.plain)
            
            
            .navigationTitle("WORK")
            
            .toolbar {
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Show List Info")
                        Image(systemName: "info.circle")})
                }
                
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Select Reminders")
                        Image(systemName: "checkmark.circle")})
                }
                
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Sort by")
                        Image(systemName: "arrow.up.arrow.down")})
                }
                
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Hide Completed")
                        Image(systemName: "eye")})
                }
                
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Save as Template")
                        Image(systemName: "plus.square.on.square")})
                }
                
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Print")
                        Image(systemName: "printer")})
                }
                
                ToolbarItem(placement:.secondaryAction ) {
                    NavigationLink(destination: {}, label: {
                        Text("Delete List")
                        Image(systemName: "xmark.bin")
                    })
                }
                
                // allineare a sinistra
                ToolbarItem (placement: .bottomBar) 
                { Button(action: {}, label: {
                    Image (systemName: "plus.circle.fill")
                    Text("New Reminder") })
                    .padding(.trailing, 230.0) }
                
                
            }
            
            /*  .sheet (isPresented: $showsheet) {
             NavigationView(
             List {
             TextField()
             })
             .navigationTitle("Aggiungi Promemoria")}*/
      //  }
    }
}

#Preview {
    ContentView()
}

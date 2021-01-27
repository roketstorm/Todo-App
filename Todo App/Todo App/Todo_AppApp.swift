//
//  Todo_AppApp.swift
//  Todo App
//
//  Created by Artur Shamsutdinov on 27.01.2021.
//

import SwiftUI

@main
struct Todo_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

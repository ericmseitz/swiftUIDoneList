//
//  DoneListApp.swift
//  DoneList
//
//  Created by Eric Seitz on 3/5/21.
//

import SwiftUI

@main
struct DoneListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

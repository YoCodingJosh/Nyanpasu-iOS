//
//  NyanpasuApp.swift
//  Nyanpasu
//
//  Created by Josh Kennedy on 1/15/21.
//

import SwiftUI

@main
struct NyanpasuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

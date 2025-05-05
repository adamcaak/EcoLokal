//
//  EcoLokalApp.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 05/05/2025.
//

import SwiftUI

@main
struct EcoLokalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

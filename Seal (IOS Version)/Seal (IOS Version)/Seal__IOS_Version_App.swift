//
//  Seal__IOS_Version_App.swift
//  Seal (IOS Version)
//
//  Created by Ravi Nathoo on 12/24/24.
//

import SwiftUI
import SwiftData

@main
struct Seal__IOS_Version_App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

//
//  LittleLemonAppApp.swift
//  LittleLemonApp
//
//  Created by Danielle Dhainy on 10/17/23.
//

import SwiftUI

@main
struct LittleLemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Onboarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

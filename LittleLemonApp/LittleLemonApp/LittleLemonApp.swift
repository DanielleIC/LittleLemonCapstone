//
//  LittleLemonAppApp.swift
//  LittleLemonApp
//
//  Created by Danielle Dhainy on 10/17/23.
//

import SwiftUI

@main
struct LittleLemonAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            OnBoarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

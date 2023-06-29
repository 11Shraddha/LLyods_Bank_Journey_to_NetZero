//
//  IEUK_TaskApp.swift
//  IEUK-Task
//
//  Created by Shraddha on 29/06/23.
//

import SwiftUI

//@main
struct IEUK_TaskApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabbarView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

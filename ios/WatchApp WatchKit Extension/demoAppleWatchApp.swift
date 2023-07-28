//
//  demoAppleWatchApp.swift
//  WatchApp WatchKit Extension
//
//  Created by Alavila Guadalupe on 28/07/23.
//

import SwiftUI

@main
struct demoAppleWatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}

//
//  AppDevTutorialsApp.swift
//  AppDevTutorials
//
//  Created by Michael on 10/13/25.
//

import SwiftUI

@main
struct AppDevTutorialsApp: App {
    var body: some Scene {
        WindowGroup {
          ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

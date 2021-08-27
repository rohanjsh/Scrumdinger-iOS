//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Rohan Joshi on 27/08/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ScrumsView(scrums: DailyScrum.data);
            }
        }
    }
}


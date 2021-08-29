//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Rohan Joshi on 27/08/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    //@State private var scrums = DailyScrum.data
    @ObservedObject private var data = ScrumData()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .onAppear {
                data.load()
            }
        }
    }
}

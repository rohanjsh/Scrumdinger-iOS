//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Rohan Joshi on 27/08/21.
//

import SwiftUI;

struct ScrumsView: View {
    let scrums: [DailyScrum];
    var body: some View{
        List{
            ForEach(scrums){scrums in
                NavigationLink(destination: DetailView(scrum: scrums)) {
                    CardView(scrum: scrums);
                }
                .listRowBackground(scrums.color);
            }
        }
        .navigationTitle("Daily Scrums")
        .navigationBarItems(trailing: Button(action: {}){
            Image(systemName: "plus")
        });
    }
}

struct ScrumsView_Preview: PreviewProvider{
    static var previews: some View{
        NavigationView {
            ScrumsView(scrums: DailyScrum.data)
        };
    }
}

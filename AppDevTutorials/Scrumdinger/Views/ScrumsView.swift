//
//  ScrumsView.swift
//  AppDevTutorials
//
//  Created by Michael on 10/17/25.
//

import SwiftUI

struct ScrumsView: View {
  
  let scrums: [DailyScrum]
  
  var body: some View {
    NavigationStack {
      List(scrums, id: \.title) { scrum in
        NavigationLink {
          DetailView(scrum: scrum)
        } label: {
          CardView(scrum: scrum)
        }
        .listRowBackground(scrum.theme.mainColor)
      }
      .navigationTitle("Daily Scrums")
      .toolbar {
        Button(action: {
          //TODO: action
        }) {
          Image(systemName: "plus")
        }
        .accessibilityLabel("New Scrum")
      }
    }
  }
}

#Preview {
  ScrumsView(scrums: DailyScrum.sampleData)
}

//
//  DailyScrum.swift
//  AppDevTutorials
//
//  Created by Michael on 10/17/25.
//

import Foundation
import ThemeKit

struct DailyScrum: Identifiable {
  var id: UUID
  var title: String
  var attendees: [Attendee]
  var lengthInMinutes: Int
  var theme: Theme
  
  init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
    self.id = id
    self.title = title
    self.attendees = attendees.map { Attendee(name: $0) }
    self.lengthInMinutes = lengthInMinutes
    self.theme = theme
  }
}

//MARK: EXTENSION
extension DailyScrum {
  struct Attendee: Identifiable {
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
      self.id = id
      self.name = name
    }
  }
}

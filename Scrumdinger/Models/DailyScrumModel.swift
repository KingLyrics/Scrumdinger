//
//  DailyScrumModel.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import Foundation

struct DailyScrumModel:Identifiable{
    
    var id:UUID
    var title:String
    var attendees:[Attendee]
    var lengthInMinutes:Int
    var theme:Theme
    
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map({Attendee(name: $0)})
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

struct Attendee:Identifiable{
    var id:UUID
    var name:String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

struct MockData {
    let sampleData:[DailyScrumModel] =
    [
        DailyScrumModel(title: "Design",
                        attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                        lengthInMinutes: 10,
                        theme: .yellow),
        DailyScrumModel(title: "App Dev",
                        attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                        lengthInMinutes: 5,
                        theme: .orange),
        DailyScrumModel(title: "Web Dev",
                        attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                        lengthInMinutes: 5,
                        theme: .poppy)
        
    ]
}

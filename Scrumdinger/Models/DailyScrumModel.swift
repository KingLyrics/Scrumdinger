//
//  DailyScrumModel.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import Foundation

struct DailyScrumModel{
    var title:String
    var attendees:[String]
    var lengthInMinutes:Int
    var theme:Theme
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

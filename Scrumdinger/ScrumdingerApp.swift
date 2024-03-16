//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = MockData().sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumList(scrums: $scrums)
        }
    }
}

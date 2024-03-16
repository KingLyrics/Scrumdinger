//
//  ScrumList.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct ScrumList: View {
    let scrums:[DailyScrumModel]
    var body: some View {
        List(scrums){ scrum in
            CardView(scrum: scrum)
                .background(scrum.theme.mainColor)
        }
        
    }
}

#Preview {
    ScrumList(scrums: MockData().sampleData)
}

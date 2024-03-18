//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 18/03/2024.
//

import SwiftUI

struct MeetingFooterView: View {
    let speakers:[ScrumTimer.Speaker]
    var skipAction:()->Void
    
    var body: some View {
        HStack{
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "forward.fill")
            })
        }
    }
}

#Preview {
    MeetingFooterView(speakers: MockData().sampleData[0].attendees.speakers)
}

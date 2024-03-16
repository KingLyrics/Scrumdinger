//
//  CardView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct CardView: View {
    let scrum:DailyScrumModel
    var body: some View {
        VStack(alignment:.leading) {
            Text(scrum.title)
                .font(.headline)
          Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)
                    .labelStyle(.trailingIcon)
            }
            .font(.subheadline)
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)
    }
        
}

#Preview {
    CardView(scrum: MockData().sampleData[1])
        .background(MockData().sampleData[1].theme.mainColor)
}

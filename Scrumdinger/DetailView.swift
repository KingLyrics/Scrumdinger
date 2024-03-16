//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct DetailView: View {
    let scrum:DailyScrumModel
    var body: some View {
        List{
            Section("Meeting Info"){
                NavigationLink(destination: MeetingView()){
                    Label("Start Meeting", systemImage: "clock")
                        .font(.headline)
                        .foregroundStyle(.tint)
                }
                HStack{
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) Minutes")
                }
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundStyle(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .clipShape(.rect(cornerRadius: 4))
                }
            }
            
            Section("Attendees"){
                ForEach(scrum.attendees){attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
    }
}

#Preview {
    NavigationStack{
        DetailView(scrum: MockData().sampleData[0])
    }
}

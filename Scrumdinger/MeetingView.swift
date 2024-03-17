//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum:DailyScrumModel
    @StateObject var scrumTimer = ScrumTimer()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(scrum.theme.mainColor)
            VStack {
                
                MeetingHeaderView(secondsElapsed: scrumTimer.secondsElapsed,
                                  secondsRemaining: scrumTimer.secondsRemaining,
                                  theme: scrum.theme)
                
                Circle()
                    .strokeBorder(lineWidth: 24)
                
                HStack{
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "forward.fill")
                    })
                }
            }
            .padding()
            
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)
        .onAppear{
            scrumTimer.reset(lengthInMinutes: scrum.lengthInMinutes, attendees: scrum.attendees)
            
        }
        .onDisappear {
                    scrumTimer.stopScrum()
                }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MeetingView(scrum: .constant(MockData().sampleData[0]))
}

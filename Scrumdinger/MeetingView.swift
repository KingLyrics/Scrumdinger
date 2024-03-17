//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum:DailyScrumModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(scrum.theme.mainColor)
            VStack {
                ProgressView(value: 5, total: 15)
                HStack {
                    VStack(alignment:.leading) {
                        Text("Seconds Elapsed")
                        Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Seconds Remaining")
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                }
                .font(.subheadline)
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
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MeetingView(scrum: .constant(MockData().sampleData[0]))
}

//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 17/03/2024.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed:Int
    let secondsRemaining:Int
    let theme:Theme
    private var totalSeconds:Int{
        secondsElapsed + secondsRemaining
    }
    
    private var progress:Double{
        guard totalSeconds > 0 else {return 1}
        return Double(secondsElapsed) / Double(totalSeconds)
    }
    
    private var minutesRemaining:Int{
        secondsRemaining / 60
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .tint(theme.mainColor)
                       .padding()
                       .background(Color.black.opacity(0.9))
                       .clipShape(.rect(cornerRadius: 10))
            HStack {
                VStack(alignment:.leading) {
                    Text("Seconds Elapsed")
                    Label("\(secondsElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                    Label("\(secondsRemaining)", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .font(.subheadline)
        }
        .padding([.top, .horizontal])

    }
    
}

#Preview {
    MeetingHeaderView(secondsElapsed:100 , secondsRemaining: 180, theme: .bubblegum)
}

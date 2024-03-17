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
        ProgressView(value: progress)
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
}

#Preview {
    MeetingHeaderView(secondsElapsed:100 , secondsRemaining: 180)
}

//
//  EditView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct EditView: View {
    @State private var scrum = MockData.emptyScrum
    
    var body: some View {
        Form{
            Section("Meeting Info"){
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, 
                           in: 5...30, 
                           step: 1
                    )
                    Spacer()
                    Text("\(scrum.lengthInMinutes) Minutes")

                }
            }
        }
    }
}

#Preview {
    EditView()
}

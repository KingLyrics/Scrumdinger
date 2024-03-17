//
//  EditView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct EditView: View {
    @Binding var scrum: DailyScrumModel 
    
    @State private var newAttendeeName = ""
    
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
                ThemePicker(selection: $scrum.theme)

            }
            Section("Attendees"){
                ForEach(scrum.attendees){attendee in
                    Text(attendee.name)
                }
                .onDelete{ indicies in
                    scrum.attendees.remove(atOffsets: indicies)
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation{
                            let attendee = Attendee( name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                    })
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

#Preview {
    EditView(scrum: .constant(MockData().sampleData[0]))
}

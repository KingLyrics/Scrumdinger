//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var scrum:DailyScrumModel
    
    @State private var isPresentingEditView = false
    @State private var editingScrum = MockData.emptyScrum
    
    
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
        .sheet(isPresented: $isPresentingEditView){
            NavigationStack{
                EditView(scrum: $scrum)
                    .navigationTitle(scrum.title)
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel"){
                                isPresentingEditView = false
                            }
                        }
                        
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done"){
                                isPresentingEditView = false
                                 editingScrum = scrum
                            }
                        }
                    }
            }
        }
        .toolbar{
            Button("Edit"){
                isPresentingEditView = true
                editingScrum = scrum
            }
        }
    }
}

#Preview {
    NavigationStack{
        DetailView(scrum: .constant(MockData().sampleData[1]))
    }
}

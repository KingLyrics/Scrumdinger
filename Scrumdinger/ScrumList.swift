//
//  ScrumList.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct ScrumList: View {
    let scrums:[DailyScrumModel]
    var body: some View {
        NavigationStack {
            
            List(scrums){ scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)

            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus")
                })
            }
        }
        
    }
}

#Preview {
    ScrumList(scrums: MockData().sampleData)
}

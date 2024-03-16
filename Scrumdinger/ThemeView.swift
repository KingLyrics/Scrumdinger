//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 16/03/2024.
//

import SwiftUI

struct ThemeView: View {
    let theme:Theme
    
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(theme.mainColor)
            .foregroundStyle(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}

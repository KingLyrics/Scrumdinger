//
//  ProgressStyle.swift
//  Scrumdinger
//
//  Created by Ekomobong Edeme on 17/03/2024.
//

import SwiftUI

struct ProgressStyle: View {
    let theme:Theme
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(theme.accentColor)
                .frame(height: 20.0)
          
        }

    }
}

#Preview {
    ProgressStyle(theme: .teal)
}

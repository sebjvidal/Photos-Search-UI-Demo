//
//  PUButtonStyle.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import SwiftUI

struct PUButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.footnote)
            .bold()
            .padding(.vertical, 6)
            .padding(.horizontal, 10)
            .background(.regularMaterial)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

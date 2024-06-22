//
//  PUGridView.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import SwiftUI

struct PUGridView: View {
    var body: some View {
        Grid(horizontalSpacing: 1, verticalSpacing: 1) {
            ForEach(1...4, id: \.self ) { _ in
                GridRow {
                    ForEach(1...3, id: \.self) { _ in
                        Color.primary.opacity(0.1)
                    }
                }
            }
        }
    }
}

#Preview {
    PUGridView()
}

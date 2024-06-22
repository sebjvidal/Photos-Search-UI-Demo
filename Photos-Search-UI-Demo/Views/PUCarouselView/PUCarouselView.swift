//
//  PUCarouselView.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import SwiftUI

struct PUCarouselView: View {
    let itemWidth: CGFloat
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 12) {
                ForEach(1...5, id: \.self) { _ in
                    Color.gray
                        .opacity(0.25)
                        .frame(width: itemWidth, height: 151)
                        .clipShape(clipShape)
                }
            }
        }
        .scrollIndicators(.hidden)
        .contentMargins(.horizontal, 24)
    }
    
    var clipShape: RoundedRectangle {
        RoundedRectangle(cornerRadius: 15, style: .continuous)
    }
}

#Preview {
    PUCarouselView(itemWidth: 226)
}

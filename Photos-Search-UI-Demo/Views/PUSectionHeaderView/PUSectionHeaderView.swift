//
//  PUSectionHeaderView.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import SwiftUI

struct PUSectionHeaderView: View {
    let title: String
    
    var body: some View {
        LazyVStack(alignment: .leading) {
            HStack(spacing: 4) {
                Text(title)
                    .font(.title2)
                    .bold()
                
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.horizontal, 24)
    }
}


#Preview {
    PUSectionHeaderView(title: "Recent Days")
}

//
//  PUHeaderView.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import SwiftUI

struct PUHeaderView: View {
    let searchAction: () -> Void
    
    var body: some View {
        HStack(alignment: .top) {
            LazyVStack(alignment: .leading, spacing: 6) {
                Text("Photos")
                    .font(.largeTitle)
                    .bold()
                
                Text("12 Items")
                    .font(.subheadline)
                    .bold()
            }
            
            Spacer()
            
            Button(action: searchAction) {
                HStack(spacing: 3) {
                    Image(systemName: "magnifyingglass")
                    
                    Text("Search")
                }
            }
            .buttonStyle(PUButtonStyle())
            .padding(.top, 6)
            
        }
        .padding(.horizontal, 24)
        .padding(.bottom)
        .background(background)
        
    }
    
    var background: LinearGradient {
        LinearGradient(stops: [
            Gradient.Stop(color: .black.opacity(0.5), location: 0),
            Gradient.Stop(color: .black.opacity(0.0), location: 1),
        ], startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    PUHeaderView {}
}

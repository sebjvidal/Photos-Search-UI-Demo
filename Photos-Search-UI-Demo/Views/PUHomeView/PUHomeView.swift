//
//  PUHomeView.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import SwiftUI

struct PUHomeView: View {
    let searchAction: () -> Void
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView {
                PUGridView()
                    .aspectRatio(0.75, contentMode: .fit)
                
                PUPageControl()
                
                PUSectionHeaderView(title: "Recent Days")
                    .padding(.bottom, 3)
                
                PUCarouselView(itemWidth: 226)
                    .padding(.bottom, 28)
                
                PUSectionHeaderView(title: "People & Pets")
                    .padding(.bottom, 3)
                
                PUCarouselView(itemWidth: 107)
                    .padding(.bottom, 28)
            }
            .edgesIgnoringSafeArea(.top)
            
            PUHeaderView(searchAction: searchAction)
        }
    }
}

#Preview {
    PUHomeView {}
}

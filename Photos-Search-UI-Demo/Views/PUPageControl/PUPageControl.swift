//
//  PUPageControl.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import SwiftUI
import UIKit

struct PUPageControl: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIPageControl()
        view.numberOfPages = 5
        view.currentPageIndicatorTintColor = .label
        view.pageIndicatorTintColor = .label.withAlphaComponent(0.25)
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

#Preview {
    PUPageControl()
}

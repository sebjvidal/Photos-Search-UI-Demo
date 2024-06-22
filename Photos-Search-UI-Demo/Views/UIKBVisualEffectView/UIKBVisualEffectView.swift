//
//  UIKBVisualEffectView.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import UIKit

class UIKBVisualEffectView: UIKBBackdropView {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        transition(toStyle: traitCollection.userInterfaceStyle == .dark ? 2030 : 3901)
    }
}

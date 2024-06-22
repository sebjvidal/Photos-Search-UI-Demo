//
//  PUSceneDelegate.swift
//  Photos-Search-UI-Demo
//
//  Created by Seb Vidal on 22/06/2024.
//

import UIKit
import SwiftUI

class PUSceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        let rootView = PUHomeView(searchAction: searchAction)
        let rootViewController = UIHostingController(rootView: rootView)
        rootViewController.view.backgroundColor = .secondarySystemBackground
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        
        self.window = window
    }
    
    func searchAction() {
        let viewController = PUSearchViewController()
        viewController.modalTransitionStyle = .crossDissolve
        viewController.modalPresentationStyle = .overCurrentContext
        
        window?.rootViewController?.present(viewController, animated: true)
    }
}

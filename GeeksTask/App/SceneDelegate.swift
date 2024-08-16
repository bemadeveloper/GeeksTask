//
//  SceneDelegate.swift
//  GeeksTask
//
//  Created by Bema on 16/8/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let firstViewController = CharactersViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

}


//
//  AppDelegate.swift
//  Coordinators
//
//  Created by Vasile Morari on 11/26/18.
//  Copyright © 2018 Vasile Morari. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController()
        appCoordinator = AppCoordinator(navigationController: window?.rootViewController as! UINavigationController)
        appCoordinator?.start()
        window?.makeKeyAndVisible()
        
        return true
    }
}


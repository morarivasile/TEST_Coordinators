//
//  MainUnauthorizedScreenCoordinator.swift
//  Coordinators
//
//  Created by Vasile Morari on 11/26/18.
//  Copyright © 2018 Vasile Morari. All rights reserved.
//

import UIKit

class MainUnauthorizedScreenCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        openMainUnauthorizedViewController()
    }
    
    private func openMainUnauthorizedViewController() {
        let mainUnauthorizedViewController = MainUnauthorizedViewController()
        mainUnauthorizedViewController.delegate = self
        navigationController.pushViewController(mainUnauthorizedViewController, animated: true)
    }
}

extension MainUnauthorizedScreenCoordinator: MainUnauthorizedScreenDelegate {
    func willOpenP2pScreen() {
        print("Opening P2P Screen...")
    }
    
    func willOpenT2cScreen() {
        print("Opening T2C Screen...")
    }
    
    func willOpenMapScreen() {
        print("Opening Map Screen...")
    }
    
    func willOpenLoginScreen() {
        print("Opening Login Screen...")
    }
}

//
//  AppCoordinator.swift
//  Coordinators
//
//  Created by Vasile Morari on 11/26/18.
//  Copyright © 2018 Vasile Morari. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
}

class AppCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    private var childCoordinators: [Coordinator] = []
    private var isLoggedIn: Bool = false
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isLoggedIn {
            addMainAuthorizedCoordinator()
        } else {
            addMainUnauthorizedCoordinator()
        }
    }
    
    private func addMainAuthorizedCoordinator() {
        
    }
    
    private func addMainUnauthorizedCoordinator() {
        let mainUnauthorizedCoordinator =
            MainUnauthorizedCoordinator(navigationController: navigationController)
        mainUnauthorizedCoordinator.start()
        childCoordinators.append(mainUnauthorizedCoordinator)
    }
}

//
//  MainUnauthorizedCoordinator.swift
//  Coordinators
//
//  Created by Vasile Morari on 11/26/18.
//  Copyright © 2018 Vasile Morari. All rights reserved.
//

import UIKit

class MainUnauthorizedCoordinator: Coordinator {
    private let navigationController: UINavigationController
    private var childCoordinators: [Coordinator] = []
    private var isFirstLunch: Bool = true
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isFirstLunch {
            showTermsOfUseScreen()
            isFirstLunch = false
        } else {
            showMainUnauthorizedScreen()
        }
    }
    
    private func showTermsOfUseScreen() {
        let termsOfUseViewController = TermsOfUseViewController()
        termsOfUseViewController.delegate = self
        navigationController.pushViewController(termsOfUseViewController, animated: true)
    }
    
    private func showMainUnauthorizedScreen() {
        let mainUnauthorizedCoordinator = MainUnauthorizedCoordinator(navigationController: navigationController)
        mainUnauthorizedCoordinator.start()
        childCoordinators.append(mainUnauthorizedCoordinator)
    }
}

extension MainUnauthorizedCoordinator: TermsOfUseScreenDelegate {
    func didAcceptTermsOfUse() {
        showMainUnauthorizedScreen()
    }
    
    func didRefuseTermsOfUse() {
        print("Exiting Application...")
    }
}

//
//  MainUnauthorizedViewController.swift
//  Coordinators
//
//  Created by Vasile Morari on 11/26/18.
//  Copyright © 2018 Vasile Morari. All rights reserved.
//

import UIKit

protocol MainUnauthorizedScreenDelegate: class {
    func willOpenP2pScreen()
    func willOpenT2cScreen()
    func willOpenMapScreen()
    func willOpenLoginScreen()
}

final class MainUnauthorizedViewController: UIViewController {
    
    weak var delegate: MainUnauthorizedScreenDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Main Unauthorized Screen"
    }
    
    @IBAction func openP2PScreen(sender: UIButton) {
        print("P2P screen is going to be oppened...")
        delegate?.willOpenP2pScreen()
    }
    
    @IBAction func openT2cScreen(sender: UIButton) {
        print("T2C screen is going to be oppened...")
        delegate?.willOpenT2cScreen()
    }
    
    @IBAction func openMapScreen(sender: UIButton) {
        print("Map screen is going to be oppened...")
        delegate?.willOpenMapScreen()
    }
    
    @IBAction func didTapLogin(sender: UIButton) {
        print("Login screen is going to be oppened...")
        delegate?.willOpenLoginScreen()
    }
}

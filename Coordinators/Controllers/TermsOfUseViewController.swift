//
//  TermsOfUseViewController.swift
//  Coordinators
//
//  Created by Vasile Morari on 11/26/18.
//  Copyright © 2018 Vasile Morari. All rights reserved.
//

import UIKit

protocol TermsOfUseScreenDelegate: class {
    func didAcceptTermsOfUse()
    func didRefuseTermsOfUse()
}

class TermsOfUseViewController: UIViewController {
    
    weak var delegate: TermsOfUseScreenDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Terms Of Use"
    }
    
    @IBAction func didTapAccept(sender: UIButton) {
        print("Accept button tapped.")
        delegate?.didAcceptTermsOfUse()
    }
    
    @IBAction func didTapRefuse(sender: UIButton) {
        print("Refuse button tapped.")
        delegate?.didRefuseTermsOfUse()
    }
}

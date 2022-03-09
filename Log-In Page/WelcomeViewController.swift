//
//  WelcomeViewController.swift
//  Log-In Page
//
//  Created by Сергей Рудь on 9.03.22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user)"

    }
}

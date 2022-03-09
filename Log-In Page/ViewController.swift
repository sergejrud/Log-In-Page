//
//  ViewController.swift
//  Log-In Page
//
//  Created by Сергей Рудь on 9.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
        
    @IBAction func logInButtonPressed() {
        if userNameTextField.text != user || passwordTextField.text != password {
            showAlert(
                title: "Access Denied",
                message: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user)")
        : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwind(_for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Private Method
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        present(alert, animated: true)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


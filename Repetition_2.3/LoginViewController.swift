//
//  LoginViewController.swift
//  Repetition_2.3
//
//  Created by Marat Shagiakhmetov on 08.09.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var logIngButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldUserName.delegate = self
        textFieldPassword.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let enterVC = segue.destination as? EnterViewController else { return }
        enterVC.hello = "User"
    }
    
    @IBAction func logInButton() {
        if textFieldUserName.text != "User" || textFieldPassword.text != "Password" {
            showAlert(
                title: "Invalid login or password!",
                message: "Please, type correct login and password.",
                textField: textFieldPassword
            )
        }
    }
    
    
    @IBAction func forgotButton(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Forgot login?", message: "Your login is 'User'!")
        } else {
            showAlert(title: "Forgot password?", message: "Your password is 'Password'!")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? EnterViewController else { return }
        textFieldUserName.text = ""
        textFieldPassword.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldUserName {
            textFieldPassword.becomeFirstResponder()
        } else {
            logInButton()
            performSegue(withIdentifier: "enterVC", sender: nil)
        }
        return true
    }
}


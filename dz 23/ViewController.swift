//
//  ViewController.swift
//  dz 23
//
//  Created by merim kasenova on 11/3/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    
    private func colorTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        textField.placeholder = "Заполните поле!"
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        if emailTextField.text!.isEmpty && passwordTextField.text!.isEmpty  {
            colorTextField(emailTextField)
            colorTextField(passwordTextField)
        } else if emailTextField.text!.isEmpty {
            colorTextField(emailTextField)
            passwordTextField.layer.borderWidth = 0
        } else if passwordTextField.text!.isEmpty {
            colorTextField(passwordTextField)
            emailTextField.layer.borderWidth = 0
        } else {
            // переход
            let fiveScreenVC = storyboard?.instantiateViewController(withIdentifier: "fiveScreenVC") as! FiveScreenViewController
            navigationController?.pushViewController(fiveScreenVC, animated: true)
            emailTextField.layer.borderWidth = 0
            passwordTextField.layer.borderWidth = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.cornerRadius = 10
        backgroundView.layer.cornerRadius = 28
    }


}


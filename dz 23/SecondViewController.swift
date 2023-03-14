//
//  SecondViewController.swift
//  dz 23
//
//  Created by merim kasenova on 14/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var MobileNumberTF: UITextField!
    @IBOutlet weak var EmailTF: UITextField!
    @IBOutlet weak var UserNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    @IBOutlet weak var signInTappad: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var backGroundView: UIView!
    
    private func colorTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        textField.placeholder = "Заполните поле!"
    }
    

    @IBAction func signInTappad(_ sender: Any) {
        if NameTF.text!.isEmpty && MobileNumberTF.text!.isEmpty && EmailTF.text!.isEmpty && UserNameTF.text!.isEmpty && passwordTF.text!.isEmpty && confirmPasswordTF.text!.isEmpty {
            colorTextField(NameTF)
            colorTextField(MobileNumberTF)
            colorTextField(EmailTF)
            colorTextField(UserNameTF)
            colorTextField(passwordTF)
            colorTextField(confirmPasswordTF)
        } else if NameTF.text!.isEmpty {
            colorTextField(NameTF)
            MobileNumberTF.layer.borderWidth = 0
        } else if MobileNumberTF.text!.isEmpty {
            colorTextField(MobileNumberTF)
            EmailTF.layer.borderWidth = 0
        } else if EmailTF.text!.isEmpty {
            colorTextField(EmailTF)
            UserNameTF.layer.borderWidth = 0
        } else if UserNameTF.text!.isEmpty {
            colorTextField(UserNameTF)
            passwordTF.layer.borderWidth = 0
        } else if passwordTF.text!.isEmpty {
            colorTextField(passwordTF)
            confirmPasswordTF.layer.borderWidth = 0
        } else if confirmPasswordTF.text!.isEmpty {
            colorTextField(confirmPasswordTF)
//            confirmPasswordTF.layer.borderWidth = 0
        } else {
            // переход
            let fiveScreenVC = storyboard?.instantiateViewController(withIdentifier: "fiveScreenVC") as! FiveScreenViewController
            navigationController?.pushViewController(fiveScreenVC, animated: true)
            NameTF.layer.borderWidth = 0
            MobileNumberTF.layer.borderWidth = 0
            EmailTF.layer.borderWidth = 0
            UserNameTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
            confirmPasswordTF.layer.borderWidth = 0
        }
    }
    }
    

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        signUpButton.layer.cornerRadius = 10
//        backGroundView.layer.cornerRadius = 28
//
//    }
 
    
    


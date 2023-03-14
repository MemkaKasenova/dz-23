//
//  ThirdScreenViewController.swift
//  dz 23
//
//  Created by merim kasenova on 14/3/23.
//

import UIKit

class ThirdScreenViewController: UIViewController {
    
    @IBOutlet weak var smsTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var getOTPButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet var smsCodeButtons: [UIButton]!
    
    private func setupSubviews () {
        getOTPButton.layer.cornerRadius = 10
        submitButton.layer.cornerRadius = 10
        smsTextField.isEnabled = false
        for button in smsCodeButtons {
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.cornerRadius = 10
        }
    }
    
    private func colorTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        textField.placeholder = "Заполните поле!"
    }
    
    
    @IBAction func getOTPTapped(_ sender: Any) {
        if phoneNumberTextField.text!.isEmpty {
            colorTextField(phoneNumberTextField)
        } else {
            phoneNumberTextField.layer.borderWidth = 0
            smsTextField.isEnabled = true
            smsTextField.backgroundColor = .white
        }
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        if smsTextField.text!.isEmpty {
            colorTextField(smsTextField)
        } else {
            smsTextField.layer.borderWidth = 0
            let fourScreenVC = storyboard?.instantiateViewController(withIdentifier: "fourScreenVC") as! FourScreenViewController
            navigationController?.pushViewController(fourScreenVC, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
    

}

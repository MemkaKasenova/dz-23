//
//  FourScreenViewController.swift
//  dz 23
//
//  Created by merim kasenova on 14/3/23.
//

import UIKit

class FourScreenViewController: UIViewController {

    @IBOutlet weak var newPasswordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    private func colorTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        textField.placeholder = "Заполните поле!"
    }
    
    @IBAction func submitButton(_ sender: Any) {
        if newPasswordTF.text!.isEmpty && confirmPasswordTF.text!.isEmpty {
            colorTextField(newPasswordTF)
            colorTextField(confirmPasswordTF)
        } else {
            newPasswordTF.layer.borderWidth = 0
            confirmPasswordTF.layer.borderWidth = 0
            let fiveScreenVC = storyboard?.instantiateViewController(withIdentifier: "fiveScreenVC") as! FiveScreenViewController
            navigationController?.pushViewController(fiveScreenVC, animated: true)
        }
    }
}
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    


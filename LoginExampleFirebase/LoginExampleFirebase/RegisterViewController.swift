//
//  RegisterViewController.swift
//  LoginExampleFirebase
//
//  Created by Ruoxin Wang on 3/18/23.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtRetypePassword: UITextField!
    
    @IBOutlet weak var lblStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblStatus.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerAction(_ sender: Any) {
        guard let email = txtEmail.text else {return}
        guard let password = txtPassword.text else {return}
        guard let repassword = txtRetypePassword.text else {return}
        
        if email.isValidEmail == false {
            lblStatus.text = "Enter Valid Email"
            lblStatus.isHidden = false
            return
        }
        
        if password.isValidPassword == false {
            lblStatus.text = "Enter Valid Password"
            lblStatus.isHidden = false
            return
        }
        
        if password != repassword {
            lblStatus.text = "Passwords not match"
            lblStatus.isHidden = false
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error != nil {
                self.lblStatus.text = error?.localizedDescription
                self.lblStatus.isHidden = false
                return
            }
            self.navigationController?.popViewController(animated: true)
        }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

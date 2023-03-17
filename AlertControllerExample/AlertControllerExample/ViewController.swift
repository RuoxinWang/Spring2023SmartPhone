//
//  ViewController.swift
//  AlertControllerExample
//
//  Created by Ruoxin Wang on 3/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    var txtField: UITextField?
    
    @IBOutlet weak var lblStock: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showAlertController(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Alert Controller Title", message: "Alert Controller Message", preferredStyle: .alert)
        
        let OKButton = UIAlertAction(title: "OK", style: .default) {action in
            self.lblStock.text = self.txtField?.text
            print("I am in OK Button")
        }
        let CancelButton = UIAlertAction(title: "Cancel", style: .cancel) {action in
            print("I am in Cancel Button")
        }
        
        
        alertController.addTextField{ lblTextField in
            self.txtField = lblTextField
            lblTextField.placeholder = "Type Stock Value"
        }
        
        alertController.addAction(OKButton)
        alertController.addAction(CancelButton)
        
        self.present(alertController, animated: true)
    }
}


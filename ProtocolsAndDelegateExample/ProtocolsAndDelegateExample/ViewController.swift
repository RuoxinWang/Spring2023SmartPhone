//
//  ViewController.swift
//  ProtocolsAndDelegateExample
//
//  Created by Ruoxin Wang on 3/16/23.
//

import UIKit

class ViewController: UIViewController, SetStatusDelegate {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lblStatus: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.setStatusDelegate = self
            guard let name = txtName.text else {return}
            secondVC.name = name
        }
    }
    
    func setStatus(status: String) {
        lblStatus.text = "My Status is : \(status)"
    }
    

    
}


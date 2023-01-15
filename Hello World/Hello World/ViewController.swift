//
//  ViewController.swift
//  Hello World
//
//  Created by Ruoxin Wang on 1/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am inside viewDidLoad() function.")
    }

    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button Was Pressed.")
        buttonLabel.text = "Hello World!"
    }
    
}


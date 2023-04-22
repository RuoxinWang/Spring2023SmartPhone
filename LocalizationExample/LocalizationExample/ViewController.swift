//
//  ViewController.swift
//  LocalizationExample
//
//  Created by Ruoxin Wang on 4/21/23.
//

import UIKit

/*
 1. Add localization language in your app
    Click on the Application Project Name
    Click on the project Name in Project section
    In localization click and add your language
 
 2. Add a new string file call it Localizable
    In that string file add the Key Value for the strings you want to be translated
    Click on Localize button on the right side of the Inspector pane
    Check all the lanuages you want to localize
    Now the localizable file should have 2-3 files inside it which will correspond to the languages
    Change the Value to Localizaed string for each language
 
 3. Create a new folder and add a new swift file called LocalizationUtils
    Add variables for the keys of the key value pair like following
 'var strHelloWorld = NSLocalizedString("hello_world", comment: "This is hello world string")'
 
 4. Create outlets for the UI elements you want to localize.
    In the viewdidload function use the variable created about for the string of the UI element.
    
 */

class ViewController: UIViewController {

    @IBOutlet weak var lblHelloWorld: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblHelloWorld.text = strHelloWorld
    }


}


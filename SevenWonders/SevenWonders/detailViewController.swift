//
//  detailViewController.swift
//  SevenWonders
//
//  Created by Ruoxin Wang on 3/18/23.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var lblDeatil: UILabel!
    
    var wondersDetail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDeatil.text = "This is \(wondersDetail)"
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

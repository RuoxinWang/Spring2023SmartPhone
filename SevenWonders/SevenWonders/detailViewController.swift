//
//  detailViewController.swift
//  SevenWonders
//
//  Created by Ruoxin Wang on 3/18/23.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var lblDeatil: UILabel!
    
    let detail = ["Wonders0", "Wonders1", "Wonders2", "Wonders3","Wonders4", "Wonders5", "Wonders6"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDeatil.text = "Detail for \(detail)"
        // Do any additional setup after loading the view.
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

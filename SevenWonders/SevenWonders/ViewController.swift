//
//  ViewController.swift
//  SevenWonders
//
//  Created by Ruoxin Wang on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["Wonders0", "Wonders1", "Wonders2", "Wonders3","Wonders4", "Wonders5", "Wonders6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.wondersImage.image = UIImage(named: "Wonders\(indexPath.row)")
        cell.lblSevenWonders.text = "Wonders\(indexPath.row)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueDetail", sender: self)
        
    }

}

    




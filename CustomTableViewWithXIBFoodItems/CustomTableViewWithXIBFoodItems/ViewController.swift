//
//  ViewController.swift
//  CustomTableViewWithXIBFoodItems
//
//  Created by Ruoxin Wang on 2/21/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imageNames = ["Food0", "Food1", "Food2", "Food3", "Food4", "Food5", "Food6", "Food7", "Food8", "Food9", "Food10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imageContainer.image = UIImage(named: "Food\(indexPath.row)")
        cell.lblImage.text = "Food\(indexPath.row)"
        
        return cell
    }
    

}


//
//  ViewController.swift
//  SevenWonders
//
//  Created by Ruoxin Wang on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageNames = ["The Colosseum, Rome, Italy", "The Great Wall of China, China", "The Taj Mahal, India", "Christ the Redeemer, Brazil","Machu Picchu, Peru", "Chichén Itzá, Mexico", "Petra, Jordan"]
    var wondersDetail = ""
    
    @IBOutlet weak var tblView: UITableView!
    
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
        cell.lblSevenWonders.text = "\(imageNames[indexPath.row])"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblView {
            wondersDetail = imageNames[indexPath.row]
            performSegue(withIdentifier: "segueDetail", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "segueDetail" {
                let secondVC = segue.destination as! detailViewController
                secondVC.wondersDetail = wondersDetail
            }
        }
        
    }

    




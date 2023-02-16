//
//  ViewController.swift
//  RestaurantsAndFood
//
//  Created by Ruoxin Wang on 2/15/23.
//

import UIKit
class RF{
    var name: String
    var food: [String]
    
    init(name: String, food : [String]){
        self.name = name
        self.food = food
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let restaurants = [
        RF(name : "Chinese Restaurant", food : ["Rice", "Hot Pot", "Dim Sum"]),
        RF(name : "US Restaurant", food : ["Burger", "Fires", "Steak"]),
        RF(name : "Japanese Restaurant", food : ["Sushi", "Ramen","Curry"])
    ]
    var selectedRestaurant : RF?
    
    @IBOutlet weak var tblViewR: UITableView!
    
    @IBOutlet weak var tblViewF: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewR {
            return restaurants.count
        }else if tableView == tblViewF {
            if let selectedRestaurant = selectedRestaurant{
                return selectedRestaurant.food.count
            } else {
                return 0
            }
            
        }
        return 0
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewR {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restaurants[indexPath.row].name
            return cell
        } else if tableView ==  tblViewF {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            if let selectedRestaurant = selectedRestaurant {
                cell.textLabel?.text = selectedRestaurant.food[indexPath.row]
            }
            return cell
        }
        return UITableViewCell()
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewR {
            selectedRestaurant = restaurants[indexPath.row]
            tblViewF.reloadData()
        }
    }
        
}
    

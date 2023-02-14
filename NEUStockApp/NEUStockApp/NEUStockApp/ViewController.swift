//
//  ViewController.swift
//  NEUStockApp
//
//  Created by Ruoxin Wang on 2/13/23.
//

import UIKit
import Alamofire
import SwiftSpinner
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    
    
    @IBOutlet weak var lblStockPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStockPrice(_ sender: Any) {
        guard let symbol = txtStockSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        AF.request(url).responseJSON { respone in
            if respone.error != nil {
                print("Error in respone!")
                return
            }
            
            guard let rawData = respone.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let volume = stock["volume"].intValue
            
            print("Symbol = \(symbol)")
            print("Price = \(price)")
            print("Volume = \(volume)")
            
            self.lblStockPrice.text = "Price = $\(price)"
            
            
            
            
            
        }
    }
    
}


//
//  ViewController.swift
//  MidTermAPICall
//
//  Created by Ruoxin Wang on 3/18/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner


class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtSymbol: UITextField!
    
    @IBOutlet weak var lblCompanyName: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    @IBOutlet weak var lblWebsite: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressAction(_ sender: Any) {
guard let symbol = txtSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        
        
        
        AF.request(url).responseJSON { response in

            if response.error != nil{
                print("Error in response")
                return
            }
            
            guard let rawData  = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let company = jsonArray.first else {return}
            print(company)
            let symbol = company["symbol"].stringValue
            let companyName = company["companyName"].stringValue
            let price = company["price"].doubleValue
            let website = company["website"].stringValue
            
            print("Symbol = \(symbol)" )
            print("companyName = \(companyName)" )
            print("price = \(price)" )
            print("website = \(website)" )
            self.lblCompanyName.text = "CompanyName = \(companyName)"
            self.lblPrice.text = "Price = \(price) $"
            self.lblWebsite.text = "Website = \(website)"
            
            
            
            
        }
    }

}
    



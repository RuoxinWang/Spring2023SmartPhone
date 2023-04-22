//
//  ImageTableViewCell.swift
//  Final
//
//  Created by Ruoxin Wang on 4/22/23.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var imgTitle: UILabel!
    
    @IBOutlet weak var imgLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  CardTableViewCell.swift
//  Cards
//
//  Created by Gustavo Dorea on 2/1/20.
//  Copyright © 2020 Gustavo Dorea. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var placeImage: UIImageView!
    
    @IBOutlet weak var contentViewCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentViewCell.clipsToBounds = false
        contentViewCell.layer.cornerRadius = 15
         contentViewCell.backgroundColor = UIColor.white
        
        self.backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1.0)
        self.selectionStyle = .none
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

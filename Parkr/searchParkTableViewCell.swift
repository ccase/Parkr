//
//  searchParkTableViewCell.swift
//  Parkr
//
//  Created by Kevin Nguyen on 6/15/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import UIKit

class searchParkTableViewCell: UITableViewCell {
    
    // properties
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var InstrLabel: UILabel!
    @IBOutlet weak var streetIM: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  parkingSpot.swift
//  Parkr
//
//  Created by Kevin Nguyen on 6/15/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import UIKit

class ParkingSpot {
    
    var price: String = ""
    var streetPhoto: UIImage?
    var location: String = ""
    var instr: String = ""
    
    init?(price: String, location: String, instr: String, streetPhoto: UIImage?) {
        self.price = price
        self.location = location
        self.instr = instr
        self.streetPhoto = streetPhoto
        
        if price.isEmpty || location.isEmpty {
            return nil
        } else if instr.isEmpty {
                self.instr = "N/A"
        }
    }
}



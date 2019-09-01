//
//  ShoppingListCollectionViewCell.swift
//  Shopping List
//
//  Created by Aaron on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingListCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    var item : ShoppingItem? {
        didSet {
            updateValues()
            
        }
    }
    
    func updateValues() {
        guard let item = item else {return}
        name.text = item.name
        let image = UIImage(named: item.name)
        itemImage.image = image
    }
    
   
    
}

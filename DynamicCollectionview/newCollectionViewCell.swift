//
//  newCollectionViewCell.swift
//  DynamicCollectionview
//
//  Created by GLB-312-PC on 04/01/18.
//  Copyright © 2018 GLB-312-PC. All rights reserved.
//

import UIKit

class newCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var testingLabel: UILabel!
    
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        let screenWidth = UIScreen.main.bounds.size.width
        widthConstraint.constant = screenWidth - (2 * 5)
        
    }

}

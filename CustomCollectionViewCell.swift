//
//  CustomCollectionViewCell.swift
//  DynamicCollectionview
//
//  Created by GLB-312-PC on 12/12/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var titlelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        let screenWidth = self.bounds.size.width - 50
       self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.titlelabel.addConstraint(NSLayoutConstraint(item: self.titlelabel, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.lessThanOrEqual, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: screenWidth))
    }
    
    func configurecell() {
        
//         self.titlelabel.layer.cornerRadius = 2;
//        self.titlelabel.layer.masksToBounds = true
//         let screenWidth = UIScreen.main.bounds.size.width
//        self.titlelabel.preferredMaxLayoutWidth = screenWidth - (2 * 20)
    }
    
}

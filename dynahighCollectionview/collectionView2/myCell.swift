//
//  myCell.swift
//  collectionView2
//
//  Created by Alex on 3/22/17.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

class myCell: UICollectionViewCell {
/*    var text:String = ""   {
        didSet {
          title.text = text
        }
        
    }
 */
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
  
    override func awakeFromNib() {
        title.preferredMaxLayoutWidth = 300
        textLabel.preferredMaxLayoutWidth = 300
    }
    
 /*
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let high = heightForText(text, width: frame.width)
        layoutAttributes.frame.height = high
        
        return layoutAttributes
    }
 */
    
  

}

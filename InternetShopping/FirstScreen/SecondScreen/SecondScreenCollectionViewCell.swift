//
//  SecondScreenCollectionViewCell.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit
import LibMVC
import SnapKit
import LibStyles

class SecondScreenCollectionViewCell: RootCollectionViewCell {
    
    // MARK: -
    // MARK: Constants for Constraints
    
    struct SpacingRules {
        static let left = 20
        //static let right = 5
        static let top = 0
        static let bottom = -15
        static let widthImage = -20
        static let heightImage = -50
        static let widthLable = -20
    }
    
    // MARK: -
    // MARK: Outlets
    
    @IBOutlet weak var priceLabel: UILabel?
    @IBOutlet weak var descriptionLabel: UILabel?
    @IBOutlet weak var itemImage: UIImageView?
    
    // MARK: -
    // MARK: Init and Deinit
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.doStyleLabel() // styling once
    }
    
    // MARK: -
    // MARK: Methods
    
    override func updateConstraints() {
        super.updateConstraints()
    }
    
    func doStyleLabel(){
        
    }
    
}

//
//  FirstScreenTableViewCell.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit
import SnapKit
import LibStyles

class FirstScreenTableViewCell: UITableViewCell {
    
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
    
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    // MARK: -
    // MARK: Init and Deinit
    
    override func awakeFromNib() {
        super.awakeFromNib()
        doStyleLabel() // styling once
    }

    // MARK: -
    // MARK: Methods
    
    override func updateConstraints() {
        categoryImage.snp.makeConstraints{ (make) -> Void in
            make.height.equalTo(self).offset(SpacingRules.heightImage)
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(SpacingRules.top)
        }
        categoryLabel.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(self).offset(SpacingRules.widthLable)
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(SpacingRules.bottom)
        }
        super.updateConstraints()
    }
    
    func doStyleLabel(){
        labelFirstScreen(categoryLabel)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    

}

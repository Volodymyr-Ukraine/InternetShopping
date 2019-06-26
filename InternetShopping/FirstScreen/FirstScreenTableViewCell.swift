//
//  FirstScreenTableViewCell.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit
import SnapKit
import LibMVC
import LibStyles

class FirstScreenTableViewCell: RootTableViewCell {
    
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
    
    
    @IBOutlet weak var categoryLabel: UILabel?
    @IBOutlet weak var categoryImage: UIImageView?
    
    // MARK: -
    // MARK: Init and Deinit
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.doStyleLabel() // styling once
    }

    // MARK: -
    // MARK: Methods
    
    override func updateConstraints() {
        if self.categoryImage != nil {
            self.categoryImage!.snp.makeConstraints{ (make) -> Void in
            make.height.equalToSuperview().offset(SpacingRules.heightImage)
                make.centerX.equalToSuperview()
                make.top.equalToSuperview().offset(SpacingRules.top)
            }
        }
        if self.categoryLabel != nil {
            self.categoryLabel!.snp.makeConstraints{ (make) -> Void in
            make.width.equalToSuperview().offset(SpacingRules.widthLable)
                make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(SpacingRules.bottom)
            }
        }
        super.updateConstraints()
    }
    
    func doStyleLabel(){
        if self.categoryLabel != nil {
            labelFirstScreen(categoryLabel!)
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    

}

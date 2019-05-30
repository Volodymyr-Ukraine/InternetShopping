//
//  RootCollectionViewCell.swift
//  LibMVC
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

open class RootCollectionViewCell: UICollectionViewCell {
    // MARK: Init and Deinit
    
    public func rootInit(){
        
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        rootInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        rootInit()
    }
}

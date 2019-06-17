//
//  RootTableViewCell.swift
//  LibMVC
//
//  Created by Vladimir on 6/17/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

open class RootTableViewCell: UITableViewCell {
    
    // MARK: -
    // MARK: Methods
    
    override open var reuseIdentifier: String? {
        return toString(type(of: self))
    }
    
    // MARK: -
    // MARK: Init and Deinit
    
    public func rootInit(){
        
    }
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        rootInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        rootInit()
    }
}

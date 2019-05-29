//
//  Setup.swift
//  LibMVC
//
//  Created by Vladimir on 5/26/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

@discardableResult
public func setup<Value: AnyObject> (_ value: Value?, action: (Value) -> Void) -> Value? {
    return value.map {
        action($0)
        return $0
        
    }
}

//
//  Configure.swift
//  LibMVC
//
//  Created by Vladimir on 5/26/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public func configure<Value> (_ value: Value, action: (inout Value) -> Void) -> Value {
    var data = value
    action(&data)
    return data
}

public func configure<Value> (_ value: Value?, action: (inout Value) -> Void) -> Value? {
    return value.map { configure($0, action: action)}
}

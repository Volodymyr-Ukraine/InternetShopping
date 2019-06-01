//
// Style.swift
//  LibStyles
//
//  Created by Vladimir on 6/1/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

// MARK: -
// MARK: Infix

precedencegroup Composition {
    associativity: left
}

infix operator + : Composition

public typealias Style<Type> = (Type) -> Void
public func + <Type> (lhs: @escaping Style<Type>, rhs: @escaping Style<Type>) -> Style<Type> {
    return { value in
        [lhs,rhs].forEach{ $0(value)}
    }
}



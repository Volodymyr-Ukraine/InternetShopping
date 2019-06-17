//
//  Model.swift
//  LibMVC
//
//  Created by Vladimir on 5/26/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public protocol RootModel{
    associatedtype Controller // means Controler of this RootModel and other names - the same
    associatedtype Presentation
    associatedtype Assembly
    
    var controler: Controller { get }
    var presentation: Presentation { get }
    var assembly: Assembly { get }
}

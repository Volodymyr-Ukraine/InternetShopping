//
//  RootAssembly.swift
//  LibMVC
//
//  Created by Vladimir on 5/26/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public protocol RootAssembly {
    associatedtype Model
    associatedtype View: LibMVC.View//UIView//RootView<Model>
    
    
    func view(model: Model) -> View
    // var view: View {get}
}

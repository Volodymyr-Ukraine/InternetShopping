//
//  View.swift
//  LibMVC
//
//  Created by Vladimir on 5/26/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

public typealias EventHandler<Event> = (Event) -> ()

public protocol View: ViewConvertible {
    associatedtype Model
    
    var model: Model { get }
}

open class RootView<Model>: UIView, View {
    
    public let model : Model
    
    open var content: [UIView] {
        return []
    }
    
    // MARK: -
    // MARK: Init and Deinit
    
    public init(model: Model) {
        self.model = model
        super.init(frame: .zero)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
       // super.init(coder: aDecoder)
        
    }
    
    // MARK: -
    // MARK: Open
    
    open func configure() {
        self.configureSubViewRelations()
        
        self.configureBindings()
        self.configureDesign()
        self.configureLayouts()
        
        self.fill(from: self.model)
        
    }
    
    open func configureBindings() {
        
    }
    
    open func configureSubViewRelations() {
        self.content.forEach(self.addSubview)
    }
    
    open func configureDesign() {
        
    }
    
    open func configureLayouts() {
        
    }
    
    open func fill(from model: Model) {
        
    }
}

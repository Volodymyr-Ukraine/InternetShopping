//
//  FirstScreenModel.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public protocol FirstScreenModelProtocol {
    var namesOfstrings: [String] {get set}
    var jumpScreens: [String] {get set}
    var namesOfImages: [String] {get set}
}

public class FirstScreenModel: FirstScreenModelProtocol {
    // MARK: -
    // MARK: Enums
    
    enum Field {
        case name
        case jumpTo
        case image
    }
    
    // MARK: -
    // MARK: Properties
    
    private var data: FirstScreensTextFields
    public var namesOfstrings: [String] = []
    public var jumpScreens: [String] = []
    public var namesOfImages: [String] = []
    
    // MARK: -
    // MARK: Init and Deinit
    
    public init() {
        self.data = FirstScreensTextFields()
        self.namesOfstrings = self.sortData(input: .name)
        self.jumpScreens = self.sortData(input: .jumpTo)
        self.namesOfImages = self.sortData(input: .image)
    }
    
    // MARK: -
    // MARK: Methods
    
    private func sortData(input: Field) -> [String] {
        return self.data.fieldsArray.sorted { (first, second) -> Bool in
            first.order<second.order
            }.map{
                switch input {
                case .name:
                    return $0.name
                case .image:
                    return $0.imageTitle
                case .jumpTo:
                    return $0.jumpTo
                }
        }
        
    }
}

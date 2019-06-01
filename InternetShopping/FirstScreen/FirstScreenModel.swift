//
//  FirstScreenModel.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public class FirstScreenModel {
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
        self.namesOfstrings = sortData(input: .name)
        self.jumpScreens = sortData(input: .jumpTo)
        self.namesOfImages = sortData(input: .image)
    }
    
    // MARK: -
    // MARK: Methods
    
    private func sortData(input: Field) -> [String] {
        return data.fieldsArray.sorted { (first, second) -> Bool in
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

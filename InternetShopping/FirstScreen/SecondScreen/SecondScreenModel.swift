//
//  SecondScreenModel.swift
//  InternetShopping
//
//  Created by Vladimir on 6/2/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public protocol SecondScreenModelProtocol {
    var namesOfstrings: [String] {get set}
    var jumpScreens: [String] {get set}
    var namesOfImages: [String] {get set}
    var pricesString: [String] {get set}
}

public class SecondScreenModel: SecondScreenModelProtocol {
    
    // MARK: -
    // MARK: Enums
    
    enum Field {
        case name
        case jumpTo
        case image
        case price
    }
    
    // MARK: -
    // MARK: Properties
    
    private var data: SecondScreensTextFields
    public var namesOfstrings: [String] = []
    public var jumpScreens: [String] = []
    public var namesOfImages: [String] = []
    public var pricesString: [String] = []
    
    // MARK: -
    // MARK: Init and Deinit
    
    public init() {
        self.data = SecondScreensTextFields()
        self.namesOfstrings = sortData(input: .name)
        self.jumpScreens = sortData(input: .jumpTo)
        self.namesOfImages = sortData(input: .image)
        self.pricesString = sortData(input: .price)
        // In the future:
        // let sql = ReadSQLData()
    }
    
    // MARK: -
    // MARK: Methods
    
    private func sortData(input: Field) -> [String] {
        return self.data.fieldsArray.sorted { (first, second) -> Bool in
            first.name<second.name
            }.map{
                switch input {
                case .name:
                    return $0.name
                case .image:
                    return $0.imageTitle
                case .jumpTo:
                    return $0.jumpTo
                case .price:
                    return "\($0.price) $"
                }
        }
        
    }
}

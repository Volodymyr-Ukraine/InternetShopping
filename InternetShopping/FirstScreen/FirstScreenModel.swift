//
//  FirstScreenModel.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public class FirstScreenModel {
    private var data: FirstScreensTextFields = FirstScreensTextFields()
    public var namesOfstrings: [String]
    public var jumpScreens: [String]
    
    public init() {
        namesOfstrings = data.fieldsArray.sorted { (first, second) -> Bool in
            first.order<second.order
            }.map{
                $0.name
            }
        jumpScreens = data.fieldsArray.sorted { (first, second) -> Bool in
            first.order<second.order
            }.map{
                $0.jumpTo
        }
    }
}

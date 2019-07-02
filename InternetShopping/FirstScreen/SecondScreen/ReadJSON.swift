//
//  ReadJSON.swift
//  InternetShopping
//
//  Created by Vladimir on 6/30/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation
import LibMVC

struct SecondScreenData: Codable{
    public var name: String
    public var price: Float
    public var imageTitle: String
    public var jumpTo: Int
    public var type: String
}

class ReadJSON {
    public var dataSecondScreen: [SecondScreenData] = []
    
    public init (sources: String) {
        
    }
}

//
//  ReadJSON.swift
//  InternetShopping
//
//  Created by Vladimir on 6/30/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation
import LibMVC

// temporary structure, may be used in ReadJSON class for test only
struct SecondScreenData: Codable{
    public var name: String
    public var price: Float
    public var imageTitle: String
    public var jumpTo: String
    public var type: String
}

class ReadJSON {
    // comment for test other structures only
    // public var dataSecondScreen: [SecondScreenData] = []
    public var dataSecondScreen: [SecondScreensTextField] = []
    
    public init (sources: String) {
        DecoderJSON.decodeArray(dataArray: &dataSecondScreen, "SecondScreenJSON")
        //print(dataSecondScreen)
    }
}

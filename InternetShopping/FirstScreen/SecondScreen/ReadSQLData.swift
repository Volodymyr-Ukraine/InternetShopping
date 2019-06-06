//
//  ReadSQLData.swift
//  InternetShopping
//
//  Created by Vladimir on 6/4/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation
import Alamofire

public class ReadSQLData: SecondScreenModelProtocol, SecondScreensTextFieldsProtocol {
    public var fieldsArray: [SecondScreensTextField] = []
    
    public var namesOfstrings: [String]
    
    public var jumpScreens: [String]
    
    public var namesOfImages: [String]
    
    public var pricesString: [String]
    
    private init(){
        
    }
}

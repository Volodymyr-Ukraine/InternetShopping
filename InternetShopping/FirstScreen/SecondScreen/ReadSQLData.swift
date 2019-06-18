//
//  ReadSQLData.swift
//  InternetShopping
//
//  Created by Vladimir on 6/4/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation
import Alamofire
import SQLite
// temporary dont used !!!

public class ReadSQLData: SecondScreenModelProtocol, SecondScreensTextFieldsProtocol {
    
    public var fieldsArray: [SecondScreensTextField] = []
    
    public var namesOfstrings: [String]
    
    public var jumpScreens: [String]
    
    public var namesOfImages: [String]
    
    public var pricesString: [String]
    
    private init(){
        self.namesOfstrings = []
        self.jumpScreens = []
        self.namesOfImages = []
        self.pricesString = []
    }
    private func connectSQL() {
        do{
            let db = try Connection("path/to/db.sqlite3")
        } catch {
            
        }
        
    }
}

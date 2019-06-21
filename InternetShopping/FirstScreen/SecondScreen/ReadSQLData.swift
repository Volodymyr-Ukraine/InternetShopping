//
//  ReadSQLData.swift
//  InternetShopping
//
//  Created by Vladimir on 6/4/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation
import Alamofire
import SQLite // good for a local db
import OHMySQL
// temporary dont used !!!


public class ReadSQLData: SecondScreenModelProtocol, SecondScreensTextFieldsProtocol {
    
    public var fieldsArray: [SecondScreensTextField] = []
    
    public var namesOfstrings: [String]
    
    public var jumpScreens: [String]
    
    public var namesOfImages: [String]
    
    public var pricesString: [String]
    
    public init(){
        self.namesOfstrings = []
        self.jumpScreens = []
        self.namesOfImages = []
        self.pricesString = []
        self.connectSQL2()
    }
    
    private func connectSQL2() {
        let user = OHMySQLUser(userName: "Ovd9nqBaON", password: "1LlTIyVb5C", serverName: "remotemysql.com", dbName: "Ovd9nqBaON", port: 3306, socket: nil)
        let coordinator = OHMySQLStoreCoordinator(user: user!)
        coordinator.encoding = .UTF8MB4
        coordinator.connect()
        
        let context = OHMySQLQueryContext()
        context.storeCoordinator = coordinator
        
        let query = OHMySQLQueryRequestFactory.select("SecondScreen", condition: nil)
        let response = try? OHMySQLContainer.shared.mainQueryContext?.executeQueryRequestAndFetchResult(query)
        print(response)
        coordinator.disconnect()
    }
    
    private func connectSQL() {
        do{
            let db = try Connection("Documents/SwiftProjects/InternetShopping/database.sql", readonly: true)
            let sellInfoPosition = Table("SecondScreen")
            for user in try db.prepare(sellInfoPosition) {
                print("\(user)")
            }
        } catch {
            print("ups, there is no connection to SQL DB")
            return
        }
    }
        
}

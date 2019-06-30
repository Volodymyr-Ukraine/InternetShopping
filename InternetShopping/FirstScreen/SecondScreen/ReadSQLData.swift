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
        self.SQLData()
    }
    
    // MARK: -
    // MARK: Private functions
    
    // read prepared php file, non secured due to open http adress (so anyone may track site and php page) PHP sample are in Resources/PHP/ServerSideFile.php
    private func connectSQLThroughtServerPHP() {
       let url = NSURL(string: "http://testsql.rf.gd/readSecondScreen.php")! as URL
        // let url = NSURL(string: "http://testsql.zzz.com.ua/read_SQL.php")! as URL
        // domen: rudy.zzz.com.ua
        // main ideas taken here: https://stackoverflow.com/questions/37400639/post-data-to-a-php-method-from-swift
        // and here: https://www.simplifiedios.net/xcode-json-example-retrieve-data-mysql/
        
            let request = NSMutableURLRequest(url: url)
            request.httpMethod = "GET"
            // let postString = ""
            // request.httpBody = postString.data(using: String.Encoding.utf8)
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            //let task = URLSession.shared.dataTask(with: request as URLRequest) {
              //  data, response, error in
                
                if error != nil {
                    print("error=\(error)")
                    return
                }
                
                print("response = \(response)")
                
                let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                print("responseString = \(responseString)")
            }
            task.resume()
        
    }
    // Direct connection to SQL base on server side (need OHMySQL pod)
    private func connectSQLDirectlyFromSite() {
        let user = OHMySQLUser(userName: "epiz_24099615", password: "yGxnrEMQOB7Qyf5", serverName: "sql105.epizy.com", dbName: "epiz_24099615_MyDB", port: 3306, socket: nil)
        //let user = OHMySQLUser(userName: "RootUser", password: "Admin1", serverName: "mysql.zzz.com.ua", dbName: "testsql", port: 3306, socket: nil)
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
    
    // Usage SQLite
    private func connectLocalSQL() {
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
    
    // fill model data directly from code
    private func SQLData () {
        
        
    }
        
}

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
        self.connectSQL3()
    }
    
    private func connectSQL3() {
        let url = NSURL(string: "http://testsql.zzz.com.ua/read_SQL.php")! as URL
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
    
    private func connectSQL2() {
        let user = OHMySQLUser(userName: "RootUser", password: "Admin1", serverName: "mysql.zzz.com.ua", dbName: "testsql", port: 3306, socket: nil)
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

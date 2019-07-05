//
//  DecoderJSON.swift
//  LibMVC
//
//  Created by Vladimir on 6/26/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

public class DecoderJSON: Codable{
    
    public class func decodeArray<T: Codable> (dataArray: inout [T], _ inputJSONText: String) {
        typealias Element = T
        guard let path = Bundle.main.path(forResource: "\(inputJSONText)", ofType: "json") else {
            print("File JSON not found")
            return
        }
        let expandedPath = URL(fileURLWithPath: path)
        print(expandedPath)
        let text = try! String(contentsOf: expandedPath)
        print(text)
        let decoder = JSONDecoder()
        do {
            dataArray = try decoder.decode([Element].self, from: text.data(using: .utf8)!) as! [T]
        } catch {
            print("error in decoding JSON")
        }
    }
}

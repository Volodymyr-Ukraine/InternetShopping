//
//  SecondScreenTextFields.swift
//  InternetShopping
//
//  Created by Vladimir on 6/2/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

// Temporary, in future may be changed on reading JSON

public protocol SecondScreensTextFieldsProtocol {
    var fieldsArray: [SecondScreensTextField] {get set}
}

public class SecondScreensTextFields: SecondScreensTextFieldsProtocol {
    public var fieldsArray: [SecondScreensTextField] = []
    init() {
        fieldsArray.append(SecondScreensTextField(
            "Комп'ютери2",
            1.1,
            "FSLKomps",
            "SecondScreen"))
        fieldsArray.append(SecondScreensTextField(
            "Телефони2",
            3.1,
            "FSLSmartphones",
            "SecondScreen"))
        fieldsArray.append(SecondScreensTextField(
            "Ноутбуки2",
            2,
            "FSLNotebooks",
            "SecondScreen"))
        fieldsArray.append(SecondScreensTextField(
            "Програмне забезпечення2",
            4,
            "FSLPz",
            "SecondScreen"))
        fieldsArray.append(SecondScreensTextField(
            "Периферія2",
            5,
            "FSLPeripheriya",
            "SecondScreen"))
    }
}

public struct SecondScreensTextField {
    public var name: String
    public var imageTitle: String
    public var price: Float
   // public var order: Int
    public var jumpTo: String
    init(_ _name: String, _ _price: Float, _ image: String, _ _jumpTo: String) {
        self.name = _name
        self.price = _price
        self.imageTitle = image
        self.jumpTo = _jumpTo
    }
}

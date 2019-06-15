//
//  FirstScreensTextFields.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

// Temporary, in future may be changed on reading JSON

public protocol FirstScreensTextFieldsProtocol {
    var fieldsArray: [FirstScreensTextField] {get set}
}

public class FirstScreensTextFields: FirstScreensTextFieldsProtocol {
    public var fieldsArray: [FirstScreensTextField] = []
    init() {
        fieldsArray.append(FirstScreensTextField(
            "Комп'ютери",
            1,
            "FSLKomps",
            "SecondScreen"))
        fieldsArray.append(FirstScreensTextField(
            "Телефони",
            3,
            "FSLSmartphones",
            "SecondScreen"))
        fieldsArray.append(FirstScreensTextField(
            "Ноутбуки",
            2,
            "FSLNotebooks",
            "SecondScreen"))
        fieldsArray.append(FirstScreensTextField(
            "Програмне забезпечення",
            4,
            "FSLPz",
            "SecondScreen"))
        fieldsArray.append(FirstScreensTextField(
            "Периферія",
            5,
            "FSLPeripheriya",
            "SecondScreen"))
    }
}

public struct FirstScreensTextField {
    public let name: String
    public let imageTitle: String
    public let order: Int
    public let jumpTo: String
    init(_ _name: String, _ _order: Int, _ image: String, _ _jumpTo: String) {
        self.name = _name
        self.order = _order
        self.imageTitle = image
        self.jumpTo = _jumpTo
    }
}

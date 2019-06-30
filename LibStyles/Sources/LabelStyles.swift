//
//  LabelStyles.swift
//  LibStyles
//
//  Created by Vladimir on 6/1/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

// MARK: -
// MARK: Functions

public func labelAligment(_ type: NSTextAlignment) -> (UILabel) -> () {
    return {$0.textAlignment = type}
}
public func labelFont(_ font: UIFont) -> (UILabel) -> () {
    return {$0.font = font}
}

public func labelColor(_ color: UIColor) -> (UILabel) -> () {
    return {$0.textColor = color}
}

// MARK: -
// MARK: Style constants

public let centeredLabel = labelAligment(NSTextAlignment.center)
public let justifiedLabel = labelAligment(NSTextAlignment.justified)
public let bigFont = labelFont(UIFont.preferredFont(forTextStyle: .title1))
public let bodyFont = labelFont(UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body))
public let darkBlue = labelColor(UIColor.init(red: 0.0, green: 0.0, blue: 0.5, alpha: 1.0))
public let darkDarkBlue = labelColor(UIColor.init(red: 0.0, green: 0.0, blue: 0.1, alpha: 1.0))

// MARK: -
// MARK: Style group fields

public let labelFirstScreen = centeredLabel + bigFont + darkBlue

public let labelDescriptionSecondScreen = justifiedLabel + bodyFont + darkDarkBlue

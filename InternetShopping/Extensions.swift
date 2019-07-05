//
//  Extensions.swift
//  InternetShopping
//
//  Created by Vladimir on 7/5/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

extension UIStoryboard {
    class func makeSecondScreen() -> SecondScreenCollectionViewController {
        return UIStoryboard(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondScreenCollectionViewController
    }
}

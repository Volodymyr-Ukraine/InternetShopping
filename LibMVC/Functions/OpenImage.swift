//
//  OpenImage.swift
//  LibMVC
//
//  Created by Vladimir on 6/2/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import Foundation

// For test purposes it open images from assets. In prodaction mode this function may be changed to download images from server

public func openImage(_ imageName: String) -> UIImage {
    return (imageName.count > 1) ? UIImage(imageLiteralResourceName: imageName) : UIImage()
}

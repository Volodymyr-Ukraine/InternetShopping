//
//  Coordinator.swift
//  InternetShopping
//
//  Created by Vladimir on 7/2/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
}

public class ApplicationCoordinator: Coordinator {
    
    // MARK: -
    // MARK: properties
    
    public let model: [Data]
    public let window: UIWindow
    public let rootViewControler: UIViewController
    
    public init (window _window: UIWindow) {
        self.window = _window
        self.model = []
        // comment this line for real variant
        let storyboard = UIStoryboard(name: "SeconScreenStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Second") as! SecondScreenCollectionViewController
        
        self.rootViewControler = vc
        // test variant
        /*let emptyViewControler = UIViewController()
        emptyViewControler.view.backgroundColor = .cyan
        self.rootViewControler = emptyViewControler
        // end of test variant */
    }
    
    func start() {
        self.window.rootViewController = rootViewControler
        self.window.makeKeyAndVisible()
    }
}

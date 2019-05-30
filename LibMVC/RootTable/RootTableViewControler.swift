//
//  RootTableViewControler.swift
//  LibMVC
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

public class RootTableViewControler: UITableViewController {
    
    // MARK: -
    // MARK: Properties
    
    
    
    // MARK: -
    // MARK: Init and Deinit
    
    public func rootInit() {
        
    }
    
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.rootInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.rootInit()
    }
    
    // MARK: -
    // MARK: override standart functions
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
 /*   override public func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
   // */
}

//
//  FirstScreenTableViewController.swift
//  InternetShopping
//
//  Created by Vladimir on 5/29/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit
import LibMVC

// !!! in info.plst changed "Main storyboard file base name" from "Main"

public protocol FirstScreenTableViewControllerProtocol {
    var data: FirstScreenModel {get set}
}

class FirstScreenTableViewController: RootTableViewControler, FirstScreenTableViewControllerProtocol {
    
    // MARK: -
    // MARK: Properties
    
    var data = FirstScreenModel()
    
    private var cellID = "CategoryCell"
    
    // MARK: -
    // MARK: Overrided methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.namesOfstrings.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? FirstScreenTableViewCell {
            cell.categoryLabel.text = data.namesOfstrings[indexPath.item]
            let imageName = data.namesOfImages[indexPath.item]
            let image = openImage(imageName)
            cell.categoryImage.image = image
            
            cell.updateConstraints()
            return cell}
        else {
            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "SecondScreenStoryboard", bundle: nil)
        guard let vc: UIViewController = (storyboard.instantiateViewController(withIdentifier: "SecondScreenCollectionViewController") as UIViewController) else {
            print("Error with conversion vc")
        }
        present(vc, animated: true, completion: nil)
    }

}

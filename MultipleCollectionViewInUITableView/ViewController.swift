//
//  ViewController.swift
//  MultipleCollectionViewInUITableView
//
//  Created by lab2 on 24/10/1941 Saka.
//  Copyright © 1941 lab2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate ,
 UITableViewDataSource {

    //Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.estimatedRowHeight = 120
        tableView.tableFooterView = UIView()
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section Title \(section)"
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell {
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
    }
}


//
//  ViewController.swift
//  TeamChat
//
//  Created by luobote on 16/10/18.
//  Copyright © 2018 u8nc. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.estimatedRowHeight = 84
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tableCount = model.latinArray.count
        return tableCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" )! as! TableViewCell
        
        let content = model.latinArray[indexPath.row]
        cell.textView.text = content
       // cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
}


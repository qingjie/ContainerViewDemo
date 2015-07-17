//
//  TableViewController.swift
//  ContainerViewDemo
//
//  Created by qingjiezhao on 7/17/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var ary = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ary = ["Cat","Dog","Bird"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = ary[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ary.count
    }
    
    
    
}

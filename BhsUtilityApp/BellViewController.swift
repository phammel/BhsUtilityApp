//
//  BellViewController.swift
//  BhsUtilityApp
//
//  Created by Phammel on 4/7/16.
//  Copyright © 2016 Phammel. All rights reserved.
//

import UIKit

class BellViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet var myBellTableView: UITableView!
    
    var defult = ["t1","t2","t3"]

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myBellTableView.dataSource = self
        myBellTableView.delegate = self

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return defult.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myCell = myBellTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        myCell.textLabel?.text = defult[indexPath.row]
        
        return myCell
    }


    
}

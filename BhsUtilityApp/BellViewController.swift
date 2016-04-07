//
//  BellViewController.swift
//  BhsUtilityApp
//
//  Created by Phammel on 4/7/16.
//  Copyright © 2016 Phammel. All rights reserved.
//

import UIKit

class BellViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet var myTableView: UITableView!
    
    
    var defult = ["t1","t2","t3"]

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.myTableView.dataSource = self
        self.myTableView.delegate = self

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return defult.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myCell = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        myCell.textLabel?.text = defult[indexPath.row]
        
        return myCell
    }


    
}

//
//  ScheduleViewController.swift
//  BhsUtilityApp
//
//  Created by Phammel on 4/7/16.
//  Copyright © 2016 Phammel. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{

   
    @IBOutlet var myTableView: UITableView!
    
    var defult = ["c1","c2","c3"]

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       myTableView.delegate = self
        myTableView.dataSource = self
    

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
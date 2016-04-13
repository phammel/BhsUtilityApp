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
    
    
    var defult = ["First Hour                         7:20 - 8:10","Second Hour                   8:16 - 9:05","Third Hour                       9:11 - 10:00", "Fourth Hour                    10:06 - 10:55", "Fifth Hour                        11:01 - 11:50", "Sixth Hour                       11:56 - 12:45", "Seventh Hour                  12:51 - 1:40", "Eighth Hour                     1:46 - 2:35"]

    
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

    @IBAction func WednesdayButton(sender: AnyObject)
    {
        
    }

    
}

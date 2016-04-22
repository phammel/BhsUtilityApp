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
    
    
    var defult = ["School Starting Bell              7:14", "First Hour                         7:20 - 8:10","Second Hour                   8:16 - 9:05","Third Hour                       9:11 - 10:00", "Fourth Hour                    10:06 - 10:55", "Fifth Hour                        11:01 - 11:50", "Sixth Hour                       11:56 - 12:45", "Seventh Hour                  12:51 - 1:40", "Eighth Hour                     1:46 - 2:35"]
    
    var wednesday = ["School Starting Bell              7:14", "First Hour                         7:20 - 8:06","Second Hour                   8:12 - 8:57","Third Hour                       9:03 - 9:48", "Fourth Hour                    9:54 - 10:39", "Fifth Hour                       10:45 - 11:30", "Sixth Hour                      11:36 - 12:21", "Seventh Hour                 12:27 - 1:12", "Eighth Hour                    1:18 - 2:03"]

    var iswednesday = false

    var warningBell = ["  ", "WarningBell:  7:19 ", "WarningBell:  8:15 ", "WarningBell:  9:10 ", "WarningBell:  10:05 ", "WarningBell:  11:00 ", "WarningBell:  11:55 ", "WarningBell:  12:50 ", "WarningBell:  1:45 "]
    
    var warningBellWens = ["  ", "WarningBell:  7:19 ", "WarningBell:  8:11 ", "WarningBell:  9:02 ", "WarningBell:  9:53 ", "WarningBell:  10:44 ", "WarningBell:  11:35 ", "WarningBell:  12:26 ", "WarningBell:  1:17 "]
    
    
    
    
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
        if !iswednesday
        {
            
        
        let myCell = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        myCell.textLabel?.text = defult[indexPath.row]
        myCell.detailTextLabel!.text = warningBell[indexPath.row]
        return myCell
        }else
        {
            
            let myCell = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
            
            myCell.textLabel?.text = wednesday[indexPath.row]
            myCell.detailTextLabel!.text = warningBellWens[indexPath.row]
            return myCell

        }
    }
    

    @IBAction func WednesdayButton(sender: AnyObject)
    {
    iswednesday = true
    myTableView.reloadData()
    }
    
    @IBAction func NormalTappedButton(sender: AnyObject)
    {
        iswednesday = false
        myTableView.reloadData()
    }

    
}

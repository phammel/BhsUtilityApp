//
//  ViewController.swift
//  BhsUtilityApp
//
//  Created by Phammel on 4/4/16.
//  Copyright © 2016 Phammel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var myTableView: UITableView!
    
    
    @IBOutlet weak var bellBack: UIButton!
    @IBOutlet weak var mapBack: UIButton!
    @IBOutlet weak var scheduleBack: UIButton!
    
    
    
    var chocies = ["Map","Bell Schedule","Your Schedule"]
    var names = ["map", "bell", "schedule"]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
       
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return chocies.count
    }


}


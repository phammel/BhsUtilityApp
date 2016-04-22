//
//  Class.swift
//  BhsUtilityApp
//
//  Created by shillestad on 4/18/16.
//  Copyright © 2016 Phammel. All rights reserved.
//

import Foundation

class Class: NSObject
{
    var teacher = ""
    var roomNumber = ""
    var hour = ""
    var nameOfClass = ""
    init(teacher: String, roomNumber: String, hour: String, nameOfClass: String)
    {
        super.init()
        self.teacher = teacher
        self.roomNumber = roomNumber
        self.hour = hour
        self.nameOfClass = nameOfClass
        
    }


}
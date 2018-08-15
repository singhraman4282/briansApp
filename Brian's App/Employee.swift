//
//  Employee.swift
//  Brian's App
//
//  Created by Raman Singh on 2018-08-15.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

import UIKit

class Employee: NSObject {
    
    var employeeName:String?
    var employeeID:Int?
    var employeeWages:Int?
    var isPromoted = false {
        didSet {
            print("HEY YALL I GOT PROMOTED")
            celebrate()
        }
    }
    
    var isDemoted = false {
        didSet {
            print("HEY YALL I GOT DEMOTED 🤕")
            goCryInTheCorner()
        }
    }
    
     init(name:String, id:Int, wages:Int) {
        self.employeeName = name
        self.employeeID = id
        self.employeeWages = wages
    }
    
    func goForABreak(forMinutes Time:Int) {
        print("I'm going for a break for \(Time) minutes")
    }
    
    private func celebrate() {
        print("🙌")
    }
    
    private func goCryInTheCorner() {
        print("😿")
    }
    
}

class Manager: NSObject {
    
    var employeesToManage = [Employee]()
    
    
    func promoteAnEmployee(employee:Employee) {
        employee.isPromoted = true
    }
    
    func demotedAnEmployee(employee:Employee) {
        employee.isDemoted = true
    }
    
}



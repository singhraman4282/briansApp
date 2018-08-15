//
//  ViewController.swift
//  Brian's App
//
//  Created by Raman Singh on 2018-08-15.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tom = Employee(name: "Tom", id: 22, wages: 2434)
        var jerry = Employee(name: "Jerry", id: 32, wages: 3843)
        
        let manager = Manager()
        manager.employeesToManage.append(tom)
        manager.employeesToManage.append(jerry)
        
        manager.promoteAnEmployee(employee: tom)
        manager.demotedAnEmployee(employee: jerry)
        
        
    }

    
}


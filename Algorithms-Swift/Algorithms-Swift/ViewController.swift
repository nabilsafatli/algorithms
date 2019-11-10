//
//  ViewController.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let numbers = [0,5,6,19,21,241,499,599,2122,5000,10000]
        let containsNumber = Search().binarySearch(target: 5199, in: numbers)
        if containsNumber {
            print("YES! there it is :)")
        } else {
            print(":( it doesn't contain the number")
        }
    }


}


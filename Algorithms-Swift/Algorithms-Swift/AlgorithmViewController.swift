//
//  AlgorithmViewController.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-26.
//  Copyright © 2019 Nabil. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController {
    var algorithm: Algorithm?

    @IBOutlet weak var executeButton: UIButton! {
        didSet {
//            executeButton.isHidden = algorithm.cod == nil
        }
    }
    @IBOutlet weak var algorithmNameLabel: UILabel! {
        didSet {
//            algorithmNameLabel.text = algorithmName
        }
    }
    
    @IBAction func executeButtonTapped(_ sender: Any) {
//        algorithmCode?()
    }
}

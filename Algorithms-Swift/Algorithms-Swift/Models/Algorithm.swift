//
//  Algorithm.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-12-27.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

final class Algorithm {
    var name: String
    var codeExecution: (() -> Void)
    
    init(name: String, codeExecution: @escaping (() -> Void)) {
        self.name = name
        self.codeExecution = codeExecution
    }
}

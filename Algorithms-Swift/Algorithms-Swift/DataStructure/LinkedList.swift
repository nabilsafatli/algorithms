//
//  LinkedList.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-12-02.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class LinkedList {
    var head: Node
    
    init(data: Int) {
        head = Node(data: data)
    }
    
    class Node {
        var data: Int
        var next: Node?
        
        init(data: Int) {
            self.data = data
        }
        
        func insert(data: Int) {
            guard let next = next else {
                let node = Node(data: data)
                self.next = node
                return
            }
            next.insert(data: data)
        }
        
        func log() {
            print(data)
            next?.log()
        }
    }

    func insert(data: Int) {
        let node = Node(data: data)
        if head.next == nil {
            head.next = node
        } else {
            node.insert(data: data)
        }
    }

    func log() {
        print(head.data)
        guard let next = head.next else {
            return
        }
        print(next.data)
        next.log()
    }
}

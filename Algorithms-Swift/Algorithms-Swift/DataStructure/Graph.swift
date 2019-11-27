//
//  Graph.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-27.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class Graph {
    var headNode: GraphNode

    init(node: GraphNode) {
        self.headNode = node
    }

    func execute() {
        //TODO
    }
}

class GraphNode {
    var data: Int?
    var child: GraphNode?
    var visited = false

    func log() {
        if let data = data {
            print("\(data)")
        }
    }

    func insert(node: GraphNode) {
        guard let child = child else {
            self.child = node
            return
        }
        child.insert(node: node)
    }

    func contains(data: Int) -> Bool {
        guard !visited else { return false }

        visited = true
        if self.data == data {
            return true
        } else if let child = child {
            return child.contains(data: data)
        }

        return false
    }
}

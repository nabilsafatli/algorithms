//
//  LRUCache.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2020-01-03.
//  Copyright © 2020 Nabil. All rights reserved.
//

/*
 
 Design and implement a data structure for Least Recently Used (LRU) cache. It should support the following operations: get and put.

 get(key) - Get the value (will always be positive) of the key if the key exists in the cache, otherwise return -1.
 put(key, value) - Set or insert the value if the key is not already present. When the cache reached its capacity, it should invalidate the least recently used item before inserting a new item.

 The cache is initialized with a positive capacity.

 Follow up:
 Could you do both operations in O(1) time complexity?

 Example:

 LRUCache cache = new LRUCache( 2 /* capacity */ );

 cache.put(1, 1);
 cache.put(2, 2);
 cache.get(1);       // returns 1
 cache.put(3, 3);    // evicts key 2
 cache.get(2);       // returns -1 (not found)
 cache.put(4, 4);    // evicts key 1
 cache.get(1);       // returns -1 (not found)
 cache.get(3);       // returns 3
 cache.get(4);       // returns 4

 Reference: https://leetcode.com/problems/lru-cache/
 
 */

import Foundation

class LRUCache {
    let capacity: Int
    var items = [Int: (Int, Date)]()

    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        if let value = items[key] {
            return value.0
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if items.count <= capacity {
            let oldestKey = getOldestKey()
            items[oldestKey] = nil
        }
        items[key] = (value, Date())
    }
    
    func getOldestKey() -> Int {
        var oldestDate = Date()
        var keyToReturn = -1
        for (key, value) in items {
            if oldestDate > value.1 {
                oldestDate = value.1
                keyToReturn = key
            }
        }
        return keyToReturn
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */

//
//  ViewController.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let sectionsTitles: [String] = ["Sorting", "Data Structure", "Challenges"]
    let sortingAlgorithmsTitles: [String] = ["Quick Sort", "Bubble Sort", "Merge Sort"]
    let dataStructuresTitles: [String] = ["Binary Tree", "Graph", "Queue", "Stack", "Linked List"]
    let challengesTitles: [String] = ["Two Sum", "Binary Search", "Rotate Left Array", "Nth Order Statistic", "Minimum Swaps", "Add Two Numbers"]
    var algorithmsGroups: [[String]] {
        return [sortingAlgorithmsTitles, dataStructuresTitles, challengesTitles]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return algorithmsGroups[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        let algorithmName = algorithmsGroups[indexPath.section][indexPath.row]
        cell.textLabel?.text = algorithmName
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return algorithmsGroups.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionsTitles[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let storyboardController = self.storyboard?.instantiateViewController(withIdentifier: "AlgorithmViewController"),
//            let algorithmViewController = storyboardController as? AlgorithmViewController else { return }
//        
//        if(indexPath.section == 0 && indexPath.row == 0) {
//            algorithmViewController.algorithmName = "Quick Sort"
//            algorithmViewController.algorithmCode = {
//                QuickSort.execute()
//            }
//        } else if(indexPath.section == 0 && indexPath.row == 1) {
//            algorithmViewController.algorithmName = "Bubble Sort"
//            algorithmViewController.algorithmCode = {
//                BubbleSort.execute()
//            }
//        } else if(indexPath.section == 0 && indexPath.row == 2) {
//            algorithmViewController.algorithmName = "Merge Sort"
//            algorithmViewController.algorithmCode = {
//                MergeSort.execute()
//            }
//        } else if(indexPath.section == 1 && indexPath.row == 4) {
//            algorithmViewController.algorithmName = "Linked List"
//            algorithmViewController.algorithmCode = {
//                LinkedList<Int>.execute()
//            }
//        } else if(indexPath.section == 1 && indexPath.row == 2) {
//            algorithmViewController.algorithmName = "Queues"
//            algorithmViewController.algorithmCode = {
//                Queue<Int>.execute()
//            }
//        }
//        else if(indexPath.section == 1 && indexPath.row == 3) {
//            algorithmViewController.algorithmName = "Stacks"
//            algorithmViewController.algorithmCode = {
//                Stack<Int>.execute()
//            }
//        } else if(indexPath.section == 2 && indexPath.row == 3) {
//            algorithmViewController.algorithmName = "Nth Order Statistic"
//            algorithmViewController.algorithmCode = {
//                NthOrderStatistic.execute()
//            }
//        }  else if(indexPath.section == 2 && indexPath.row == 4) {
//            algorithmViewController.algorithmName = "Minimum Swaps"
//            algorithmViewController.algorithmCode = {
//                MinimumSwaps.execute()
//            }
//        } else if(indexPath.section == 2 && indexPath.row == 5) {
//            algorithmViewController.algorithmName = "Add Two Numbers"
//            algorithmViewController.algorithmCode = {
//                AddTwoNumbers.execute()
//            }
//        } else {
//            algorithmViewController.algorithmName = "Work in Progress"
//        }
//        
//        self.navigationController?.pushViewController(algorithmViewController, animated: true)
    }
}

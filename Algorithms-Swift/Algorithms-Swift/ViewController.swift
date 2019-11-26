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
    let dataStructuresTitles: [String] = ["Binary Tree", "Graph", "Queue", "Stack"]
    let challengesTitles: [String] = ["Two Sum", "Binary Search", "Rotate Left Array"]
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
        guard let storyboardController = self.storyboard?.instantiateViewController(withIdentifier: "AlgorithmViewController"),
            let algorithmViewController = storyboardController as? AlgorithmViewController else { return }

        if(indexPath.section == 0 && indexPath.row == 0) {
            algorithmViewController.algorithmName = "Quick Sort"
            algorithmViewController.algorithmCode = {
                QuickSort.execute()
            }
        } else if(indexPath.section == 0 && indexPath.row == 1) {
            algorithmViewController.algorithmName = "Bubble Sort"
            algorithmViewController.algorithmCode = {
                BubbleSort.execute()
            }
        } else {
            algorithmViewController.algorithmName = "Work in Progress"
        }

        self.navigationController?.pushViewController(algorithmViewController, animated: true)
    }
}

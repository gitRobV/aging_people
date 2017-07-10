//
//  ViewController.swift
//  AgingPeople
//
//  Created by Robert on 7/10/17.
//  Copyright © 2017 Robert Villarreal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var personTableView: UITableView!

    
    var personList = ["Olivia", "Jude", "Jacob", "Adrian", "Donovan", "Sophia", "Issac", "Angel", "GiGi", "Enzo", "Cooper", "Baby Adolfo"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = personList[indexPath.row]
        cell.detailTextLabel?.text = String(randomAge())
        return cell
    }
    
    func randomAge() -> Int {
        return Int(arc4random_uniform(91) + 5)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personTableView.dataSource = self

    
    }


}


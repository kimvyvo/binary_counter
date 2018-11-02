//
//  ViewController.swift
//  binary_counter
//
//  Created by Kim Vy Vo on 9/12/18.
//  Copyright © 2018 Kim Vy Vo. All rights reserved.
//

import UIKit

class TVC: UITableViewController, AddSubtractDelegate {
    
    @IBOutlet weak var totalLabel: UILabel!
    var amount: [Int] = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000, 100000000000, 1000000000000, 10000000000000, 100000000000000, 1000000000000000]
    
    var total: Int = 0

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.amountLabel.text = "\(amount[indexPath.row])"
        cell.delegate = self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amount.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        totalLabel.text = "Total: \(total)"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addButtonPressed(by: CustomCell, with amount: String) {
        print(amount)
        total += Int(amount)!
        totalLabel.text = "Total: \(total)"
        tableView.reloadData()
    }
    
    func subtractButtonPressed(by: CustomCell, with amount: String) {
        print(amount)
        total -= Int(amount)!
        totalLabel.text = "Total: \(total)"
        tableView.reloadData()
    }

}

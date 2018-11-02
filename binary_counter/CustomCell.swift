//
//  CustomCell.swift
//  binary_counter
//
//  Created by Kim Vy Vo on 9/12/18.
//  Copyright © 2018 Kim Vy Vo. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    weak var delegate: AddSubtractDelegate?
    
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        let amount: String = amountLabel.text!
        print(amount)
        delegate?.subtractButtonPressed(by: self, with: amount)
    }
    @IBAction func addButtonPressed(_ sender: UIButton) {
        let amount: String = amountLabel.text!
        print(amount)
        delegate?.addButtonPressed(by: self, with: amount)
    }
}

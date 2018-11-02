//
//  AddSubtractDelegate.swift
//  binary_counter
//
//  Created by Kim Vy Vo on 9/12/18.
//  Copyright © 2018 Kim Vy Vo. All rights reserved.
//

import Foundation

protocol AddSubtractDelegate: class {
    func addButtonPressed(by: CustomCell, with amount: String)
    func subtractButtonPressed(by: CustomCell, with amount: String)
}

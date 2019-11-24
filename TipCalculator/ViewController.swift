//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sebastian Ruiz on 11/24/19.
//  Copyright © 2019 Sebastian Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10, 0.15]
        let bill = Double(inputField.text!) ?? 0
        let tip = (bill * tipPercent[percentControl.selectedSegmentIndex])
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

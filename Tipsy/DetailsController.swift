//
//  DetailsController.swift
//  Tipsy
//
//  Created by Qenawi on 12/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit
class DetailsControler: UIViewController	
{
    @IBAction func reCalcUlatAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet var reCalcuate: [UIButton]!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var amount: UILabel!
    var amountVal = 0.0
    var msg = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.amount.text = String(amountVal)
        self.message.text = msg
    }
}

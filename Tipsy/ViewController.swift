//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

let nav = "mainToDetiails"

class ViewController: UIViewController {

    @IBOutlet weak var valueText: UITextField!
    @IBOutlet weak var twenty: UIButton!
    @IBOutlet weak var tenBtn: UIButton!
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var steeperLapel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    var amount:Double = 0.0
    @IBAction func steeper(_ sender: UIStepper)
    {
        steeperLapel.text = String(sender.value)
    }
    @IBAction func navigate(_ sender: UIButton) {
        self.performSegue(withIdentifier: nav, sender: self)
    }
    @IBAction func onAction(_ sender: UIButton)
    {
        if sender.tag == 0 {
            zeroBtn.isSelected = true
            tenBtn.isSelected = false
            twenty.isSelected = false

            
        }
        else if sender.tag == 10 {
                       zeroBtn.isSelected = false
                       tenBtn.isSelected = true
                       twenty.isSelected = false
        }
       else  if sender.tag == 20 {
                       zeroBtn.isSelected = false
                       tenBtn.isSelected = false
                       twenty.isSelected = true
        }
        self.caclulate()
    }
    @IBOutlet weak var textValue: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func caclulate()
    {
        amount = Double(valueText.text ?? "0.0") ?? 0.0
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == nav {
           let ee = (segue.destination as! DetailsControler)
            ee.amountVal = amount
        }
    }

}


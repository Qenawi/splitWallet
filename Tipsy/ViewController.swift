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
    var amountAfter = 0.0
    var tipprecent = 0
    var tipValue = 0.0
    
 

    @IBAction func steeper(_ sender: UIStepper)
    {
        steeperLapel.text = String(format: "%.0f",sender.value)
    }
    @IBAction func navigate(_ sender: UIButton) {
        self.caclulate()
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
        self.tipprecent = sender.tag
        
    }
    @IBOutlet weak var textValue: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func caclulate()
    {
        self.amount =  Double(self.valueText.text ?? "0.0") ?? 0.0
        self.tipValue  = Double(self.tipprecent) * self.amount
        self.tipValue /= 100.0
        self.amountAfter = self.amount - self.tipValue
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == nav {
           let ee = (segue.destination as! DetailsControler)
            ee.amountVal = (self.amountAfter/self.stepper.value)
            ee.msg = "amount is going to be \(self.valueText.text) and will be splitted on \(Int(self.stepper.value)) and each one is going to pay \(ee.amountVal)"
        }
    }

}


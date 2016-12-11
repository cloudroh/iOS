//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by 노정우 on 2016. 12. 11..
//  Copyright © 2016년 cloudroh. All rights reserved.
//

import UIKit


class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: Double(value)))
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField) {
        
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = value
        }
        else {
            fahrenheitValue = nil
        }
        
    }
}

//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by 노정우 on 2016. 12. 11..
//  Copyright © 2016년 cloudroh. All rights reserved.
//

import UIKit


class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let date = Date()
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: date)
        if (hour > 18 || hour < 6) {
            view.backgroundColor = UIColor.gray
        } else {
            view.backgroundColor = UIColor.white
        }
    }
    //    let date = Date()
    //    let calendar = Calendar.current
    //
    //    let hour = calendar.component(.hour, from: date)
    //    let minutes = calendar.component(.minute, from: date)
    //    let seconds = calendar.component(.second, from: date)
    
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
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
//        let existingTextHasDecimalSeparator = textField.text? .range(of: ".")
//        let replacementTextHasDecimalSeparator = string.range(of: ".")
//        
//        if existingTextHasDecimalSeparator != nil && replacementTextHasDecimalSeparator != nil {
//            return false
//        }
//        else {
//            return true
//        }
        // Get current string as `NSString`
        guard let existingString = textField.text as NSString? else { return false }
        // Perform replacement:
        let newString = existingString.replacingCharacters(in: range, with: string)
        // Check for empty result ...
        if newString.isEmpty {
            return true
        }
        // ... or valid number:
        let fmt = NumberFormatter()
        fmt.numberStyle = .decimal
        return fmt.number(from: newString) != nil
    }
    
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

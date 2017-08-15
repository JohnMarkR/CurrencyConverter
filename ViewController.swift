//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by John Roquemore on 8/8/17.
//  Copyright © 2017 John Roquemore. All rights reserved.
//  Sent project to GitHub on 8/14/2017 7:50 PM 

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        inputTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    // Called when 'return' key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    
    // Called when user taps outside the text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        view.endEditing(true)
    }

    @IBAction func convertCurrency(_ sender: UIButton)
    {
        if let amount = Double(inputTextField.text!)
        {
            dollarAmount = amount
        }
        
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0

    }
    
    // Called when the users taps the clear button.
    @IBAction func clearTextInputField(_ sender: UIButton)
    {
       
        // used to clear the text field
        self.inputTextField.text = ""
        
        // used to clear the labels
        self.poundLabel.text = "0.00"
        self.yenLabel.text = "0.00"
        self.euroLabel.text = "0.00"
        
      
    }
    

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    
}


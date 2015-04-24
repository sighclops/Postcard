//
//  ViewController.swift
//  Postcard
//
//  Created by James Davey on 22/09/2014.
//  Copyright (c) 2014 James Davey. All rights reserved.
//


import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var displayInfo: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        
        // Adding a Comment here to tests commits
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        displayInfo.hidden = false
        displayInfo.text = enterNameTextField.text
        displayInfo.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)

    

        
    }
    

}
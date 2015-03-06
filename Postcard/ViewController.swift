//
//  ViewController.swift
//  Postcard
//
//  Created by Geoff Leavitt on 3/3/15.
//  Copyright (c) 2015 cr8tvdesign. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        //revealing the name label
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        
        //revealing the message label area
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        //clearing the text in name box and releasing keyboard
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        //clearing the text in message box and releasing keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        //changing the appearance of the sent button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.orangeColor()
    }

}


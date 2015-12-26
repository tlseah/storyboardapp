//
//  ViewController.swift
//  storyboard
//
//  Created by Tat Leong Seah on 26/12/15.
//  Copyright © 2015 codomo. All rights reserved.
//

import UIKit
let flatcolor=UIColor(red:25/255, green:165/255, blue:240/255, alpha:1)
class ViewController: UIViewController {
    
    @IBOutlet var messageLabelRev: UIView!
    
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
        messageLabel.hidden=false
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=flatcolor
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Highlighted)
    }

}


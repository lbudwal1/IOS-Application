//
//  ViewController.swift
//  DMIT
//
//  Created by Komalpreet Kaur on 2017-10-10.
//  Copyright © 2017 Likhit Budwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var userNameField: UITextField!
    
    

    @IBAction func Log_In(_ sender: AnyObject) {
        
        if (userNameField.text?.isEmpty)!
        {
            
        }
        else{
            
            
            self.performSegue(withIdentifier: "hl", sender: self)
            
            
            
            
            }
        }
    }



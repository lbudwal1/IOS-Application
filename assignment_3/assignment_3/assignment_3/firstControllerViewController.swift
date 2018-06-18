//
//  firstControllerViewController.swift
//  assignment_3
//
//  Created by Likhit Budwal on 2017-11-02.
//  Copyright © 2017 Likhit Budwal. All rights reserved.
//

import UIKit

class firstControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        createAlert(title: "Welcome", message: "DMIT Student Association Club Application")
    }
    
    func createAlert(title: String, message : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true,completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var userField: UITextField!

    @IBOutlet weak var passField: UITextField!
    
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction func onTap(_ sender: Any) {
        userField.resignFirstResponder()
        passField.resignFirstResponder()
    }
}

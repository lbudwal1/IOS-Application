//
//  ViewController.swift
//  assignment_3
//
//  Created by Likhit Budwal on 2017-11-02.
//  Copyright © 2017 Likhit Budwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource {

    let table_list = ["Computer Software Development", "Web Design", "Animation", "Game Programming", "Game Design", "IT System Administrator"]
   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return(table_list.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = table_list[indexPath.row]
        
        return(cell)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var confPassField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder()
    }
    @IBAction func onTapClose(_ sender: Any) {
        userNameField.resignFirstResponder()
        passField.resignFirstResponder()
        confPassField.resignFirstResponder()
        emailField.resignFirstResponder()
    }

    
    
    
    @IBOutlet weak var picker: UIPickerView!
    var list_Class = ["DMIT 1508", "CPSC 1012", "CPSC 1017"]
    var placement_Selection = 0
    
    @IBOutlet weak var classDetailText: UITextView!
    
    

    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list_Class[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list_Class.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        placement_Selection = row
    }

    @IBAction func classButton(_ sender: Any) {
        if(placement_Selection == 0){
            classDetailText.text = "IN DMIT 1508 We helps you to Understand The Basic content of database in MYSQL"
            
        }
        else if(placement_Selection == 1){
            classDetailText.text = "IN CPSC 1012 We helps you to Understand The Basic content of Programming in C# which is must for every DMIT-CSD students"
        }
        else{
            classDetailText.text = "IN CPSC 1017 you learn how to create a web page with HTML and CSS"
        }
    }
    
    
    @IBOutlet weak var table: UITableView!
    
    
    
   
    
}


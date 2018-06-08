//
//  ViewController.swift
//  Age Finder
//
//  Created by PyShivam on 6/7/18.
//  Copyright © 2018 foslipy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getAge() {
        var myBirthYear: Int = 0
        if txt.text!.isEmpty {
            myBirthYear = 2018
        } else{
            myBirthYear = Int(txt.text!)!
        }
        let myAge: Int = 2018 - myBirthYear
        ageLabel.text = String(myAge)
    }
    
    @IBAction func btnFind(_ sender: Any) {
        getAge()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        getAge()
        return true
    }
}


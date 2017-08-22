//
//  ViewController.swift
//  PhoneNumber
//
//  Created by João Medrado on 11/8/17.
//  Copyright © 2017 João Medrado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var phoneLabel: UILabel!
    

    @IBAction func save(_ sender: Any) {
        if !(txtField.text == ""){
           UserDefaults.standard.set(txtField.text, forKey: "phone")
        }
        updateStoredPhone()
    }
    
    private func updateStoredPhone(){
      let objPhone = UserDefaults.standard.object(forKey: "phone")
        if let storedPhone = objPhone as? String {
            phoneLabel.text = storedPhone
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStoredPhone()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


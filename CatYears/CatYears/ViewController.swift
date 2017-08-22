//
//  ViewController.swift
//  CatYears
//
//  Created by João Medrado on 29/7/17.
//  Copyright © 2017 João Medrado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catAgeInput: UITextField!
    @IBOutlet weak var calculatedCatAge: UILabel!
    
    
    @IBAction func submit(_ sender: Any) {
        let catAge = catAgeInput.text ?? "0"
        calculatedCatAge.text = String((Int(catAge) ?? 0) * 7)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


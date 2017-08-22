//
//  ViewController.swift
//  Fingers
//
//  Created by João Medrado on 31/7/17.
//  Copyright © 2017 João Medrado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func guess(_ sender: Any) {
        let correctNumber = Int(arc4random_uniform(6))
        let guessedNumber = Int(textField.text!) ?? -1
        if correctNumber == guessedNumber {
         result.text = "You're right"
        }else{
         result.text = "Wrong! It was \(correctNumber)"
        }
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


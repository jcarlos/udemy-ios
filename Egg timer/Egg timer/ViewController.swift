//
//  ViewController.swift
//  Egg timer
//
//  Created by João Medrado on 7/8/17.
//  Copyright © 2017 Joao Medrado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var timer = Timer()
  
  @IBOutlet weak var timerLabel: UILabel!
  
  @IBAction func startButton(_ sender: Any) {
    print("start")
    startTimer()
  }
  
  @IBAction func pauseButton(_ sender: Any) {
    print("pause")
    pauseTimer()
  }
  
  @IBAction func resetButton(_ sender: Any) {
    print("reset")
    timerLabel.text = "210"
  }
  
  @IBAction func plus10Button(_ sender: Any) {
    print("+10")
    adjustTime(adjustment: 10)
  }
  
  @IBAction func less10Button(_ sender: Any) {
    print("-10")
    adjustTime(adjustment: -10)
  }
  
  @IBOutlet weak var resetButton: UIToolbar!
  func startTimer(){
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
  }
  
  func adjustTime(adjustment: Int){
    var time = Int(timerLabel.text!)!
    if time + adjustment >= 0 {
      time += adjustment
    }
    timerLabel.text = String(time)
  }
  
  func pauseTimer(){
    timer.invalidate()
  }
  
  func processTimer(){
    print("A second has passed")
    adjustTime(adjustment: -1)
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


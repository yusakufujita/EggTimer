//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    
    //修正しました。という文章を付け加えてみる。
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    let eggTimers = ["Soft":3, "Medium":4, "Hard": 7]
      var secondRemaining = 60
      var timer = Timer()
      var totalTime = 0
      var secondsPassed = 0

    @IBAction func hardnessSelected(_ sender: UIButton) {
            timer.invalidate()
            let hardness = sender.currentTitle! // Soft, Medium, Hard
            totalTime = eggTimers[hardness]!
            
            progressBar.progress = 0.0
            secondsPassed = 0
            titleLabel.text = hardness
            
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            print(Float(secondsPassed) / Float(totalTime))
            
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
}

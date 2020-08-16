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
    
    //同じコードを３つ書く必要はない…！
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle
        //辞書を使うことでより一行で表記できる。
        let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
        
//        //if文で記載
//        if hardness == "Soft" {
//            print(softTime)
//        } else if hardness == "Medium" {
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
        
        // if let文の復習
        if let hardness = hardness {
            
            //resultを介してアンラップ
            let result = eggTimes[hardness]!
            
            //Switch ここまでシンプルに記載できる
            switch hardness {
            case hardness:
                print(result)
            default:
                print("Error")
            }
        }
    }
    


}

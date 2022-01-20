//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    //var x=Int.random(in: 0...5), y=Int.random(in: 0...5)
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }

    @IBAction func button(_ sender: UIButton) {
        let arr = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImageView1.image=arr.randomElement()
        diceImageView2.image=arr.randomElement()
       
       
    }
    
}


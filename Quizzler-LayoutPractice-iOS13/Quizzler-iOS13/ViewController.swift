//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var t: UIButton!
    @IBOutlet weak var f: UIButton!
    
    @IBOutlet weak var bar: UIProgressView!
    
    var x = 0
    var result = 0
    var awal = 0;
    let soal = [
    ["nama sy vania","True"],
    ["nama sy bkn vania", "False"],
    ["sy suka sushi", "True"],
    ["sy g suka kare", "True"],
    ["sy suka sayur asem", "False"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = soal[0][0]
        bar.progress=0
        awal = 0
    }
    @IBAction func pressed(_ sender: UIButton) {
        print("x = \(x)")
        print("awal = \(awal)")
        if(awal == 1)
        {
            x = 0
            print("aye")
            bar.progress=1.0/Float(soal.count)
            f.alpha=1
            t.alpha=1
            t.setTitle("True", for: .normal)
        }
        //else{awal = 0}
//else{awal = 0}
        

      
        question.text = soal[x][0]
        let ans = sender.currentTitle
        let kunjaw = soal[x][1]
        if ans == kunjaw { result+=1 }
        if(awal == 1 ){x = 0}
        else {x += 1}
        if(x == 0) {awal = 0}
        bar.progress = (Float(x))/Float(soal.count)
        
            print("x bawah = \(x)")
            if(x == 5){
                question.text = "scorenya : \(result)"
                f.alpha=0
                t.setTitle("Try Again", for: .normal)
                awal = 1
                result = 0
                x = 0
                bar.progress = 1
            }
            else
            {question.text = soal[x][0]}
        }

        


}


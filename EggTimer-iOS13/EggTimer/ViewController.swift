//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let eggTime  = ["Soft" : 3, "Medium" : 4, "Hard" : 20]
    var secondsRemaining = 1.0
    var x = 1.0;
    var timer = Timer()
    
    
    @IBOutlet weak var bar: UIProgressView!
    @IBOutlet weak var teks: UILabel!
    var player: AVAudioPlayer!
    @IBAction func xxx(_ sender: UIButton) {
        bar.progress=0
        timer.invalidate()
        let tingkat = sender.currentTitle!
        print(tingkat)
        secondsRemaining = Double(eggTime[tingkat]!)
        let x = secondsRemaining * 1.0
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ [self]
            (Timer) in
                if self.secondsRemaining > 0 {
                    print ("\(Int(self.secondsRemaining)) seconds")
                    self.bar.progress = Float((x-self.secondsRemaining)/x)
                    print("bar \(Float((x-self.secondsRemaining)/x))")
                    self.secondsRemaining -= 1
                }else if self.secondsRemaining == 0 {
                    self.bar.progress=1
                    self.teks.text = "Done"
                    playSound()
                    self.secondsRemaining -= 1
                }
            
            else {
                    Timer.invalidate()
                }
        }
       // print("sisa = \(secondsRemaining)")
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
    
}

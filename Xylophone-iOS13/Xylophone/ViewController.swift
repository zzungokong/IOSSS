//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("Start")
        sender.alpha=0.5
        playSound(x: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2)
        {print("End")}
        sender.alpha=1.0
        
    }
    
    func playSound(x:String) {
        let url = Bundle.main.url(forResource: x, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


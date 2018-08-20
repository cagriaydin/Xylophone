//
//  ViewController.swift
//  Xylophone
//
//  Created by Çağrı Aydın on 20.08.2018.
//  Copyright © 2018 Çağrı Aydın. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}


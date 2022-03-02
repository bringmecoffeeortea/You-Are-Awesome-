//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Michael Ross on 2022-02-17.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var messageNumber = -1
    var imageNumber = -1
    var soundNumber = -1
    let MaxImageNumber = 9
    let MaxSoundNumber = 5
    var newNumber = -1
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    func playSound(name: String) {
        // read the data in from our assets catalogue
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("🤨 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else {
            print("🤨 ERROR: Could not read data from file \(name)")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while newNumber == originalNumber
        return newNumber
    }
    
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["Nice!",
                        "Yeah!",
                        "Woohoo!",
                        "Great!",
                        "Cool!",
                        "Yeeee!"]
        
        
        var newMessageNumber: Int
        
        
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        
        var newImageNumber: Int
        
        
        repeat {
            newImageNumber = Int.random(in: 0...MaxImageNumber)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")!
        
        
        var newSoundNumber: Int
        
        repeat {
            newSoundNumber = Int.random(in: 0...MaxSoundNumber)
        } while soundNumber == newSoundNumber
        soundNumber = newSoundNumber
        print(soundNumber)

        playSound(name: "sound\(soundNumber)")
        
        
        
    }
}


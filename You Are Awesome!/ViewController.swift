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
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while newNumber == originalNumber
        return newNumber
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
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["Nice!",
                        "Yeah!",
                        "Woohoo!",
                        "Great!",
                        "Cool!",
                        "Yeeee!"]
        
        let messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        let imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: MaxImageNumber)
        imageView.image = UIImage(named: "image\(imageNumber)")!
        
        let soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: MaxSoundNumber)
        playSound(name: "sound\(soundNumber)")
    }
}


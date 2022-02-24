//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Michael Ross on 2022-02-17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["Nice!",
                        "Yeah!",
                        "Woohoo!",
                        "Great!",
                        "Cool!",
                        "The long and winding road, that leads to your door!"]
        
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }

//        imageNumber = Int.random(in: 0...9)
//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
        
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
        
        
        //        let niceMessage = "Nice!"
        //        let wowMessage = "Wow!"
        //        let coolMessage = "Cool!"
        //
        //        if messageLabel.text == niceMessage {
        //            messageLabel.text = wowMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if messageLabel.text == wowMessage {
        //            messageLabel.text = coolMessage
        //            imageView.image = UIImage(named: "image5")
        //        } else {
        //            messageLabel.text = niceMessage
        //            imageView.image = UIImage(named: "image4")
        //        }
        
    }
}


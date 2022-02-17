//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Michael Ross on 2022-02-17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run!")
        messageLabel.text = "Welcome!"
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The Message button was pressed!")
        messageLabel.text = "Hello!!"
    }
    @IBAction func anotherButtonPressed(_ sender: UIButton) {
        print("😀 The Other button was pressed!")
        messageLabel.text = "Bonjour!!"
    }
}


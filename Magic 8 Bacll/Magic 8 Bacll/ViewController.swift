//
//  ViewController.swift
//  Magic 8 Bacll
//
//  Created by Lucas Rocha on 12/06/19.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImage = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        newBallImage()
        super.viewDidLoad()
    }
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        let randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballImage[randomBallNumber])
    }
    
}


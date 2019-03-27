//
//  ViewController.swift
//  ImageView Timer
//
//  Created by amadeus on 27/03/2019.
//  Copyright © 2019 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImageView: UIImageView!
    @IBOutlet weak var indexLabel: UILabel!
    var count = 1
    var isAnimating = false
    
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageView.image = UIImage(named: "frame1.png")
        indexLabel.text = String(count)
        
    }

    @IBAction func imagePlay(_ sender: Any) {
        if isAnimating == false {
            myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func imagePause(_ sender: Any) {
    }
    
    @IBAction func imageStop(_ sender: Any) {
    }
    
    @objc func doAnimation() {
        print("hahaha")
    }
}


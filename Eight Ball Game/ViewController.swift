//
//  ViewController.swift
//  Eight Ball Game
//
//  Created by Shinto Joseph on 02/12/17.
//  Copyright © 2017 Shinto Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateBallImage()
      
    }
    
    

    @IBAction func askButtonTapped(_ sender: Any) {
        
        updateBallImage()
        
        
    }
    
    func updateBallImage(){
        
        randomBallNumber = Int(arc4random_uniform(4))
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateBallImage()
    }
   

}


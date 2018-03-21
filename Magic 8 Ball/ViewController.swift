//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by George Garcia on 3/13/18.
//  Copyright © 2018 GTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //let answers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randoNum = 0
    
    @IBOutlet weak var eightImage: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    @IBAction func askTouch(_ sender: AnyObject) {
        
        newBallImage()
        
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        newBallImage()
    }
    
    func newBallImage(){
        
        randoNum = Int(arc4random_uniform(5))
        //eightImage.image = UIImage(named: answers[randoNum])
        eightImage.image = UIImage(named: "ball\(randoNum + 1)")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


//
//  TransitionVC.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 17/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class TransitionVC: UIViewController {

    @IBOutlet weak var imgViewDemo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func resetPressed(_ sender: Any) {
        self.imgViewDemo.image = UIImage.init(named: "imgOne.jpg")
    }
    
    @IBAction func animatePressed(_ sender: Any) {
        let transition = CATransition.init()
        transition.type = kCATransitionFade
        transition.duration = 1.0
        
        self.imgViewDemo.layer.add(transition, forKey: nil)
        self.imgViewDemo.image = UIImage.init(named: "imgTwo.jpg")
    }
    
}

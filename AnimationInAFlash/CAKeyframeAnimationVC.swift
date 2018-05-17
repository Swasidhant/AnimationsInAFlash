//
//  CAKeyframeAnimationVC.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 16/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class CAKeyframeAnimationVC: UIViewController {

    @IBOutlet weak var viewDemo: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func resetPressed(_ sender: UIButton) {
        self.viewDemo.layer.backgroundColor = UIColor.purple.cgColor
    }
    
    @IBAction func changeColorPressed(_ sender: Any) {
        let keyFrameAnimation = CAKeyframeAnimation.init()
        keyFrameAnimation.keyPath = "backgroundColor"
        keyFrameAnimation.values = [UIColor.purple.cgColor, UIColor.blue.cgColor, UIColor.green.cgColor, UIColor.purple.cgColor]
        keyFrameAnimation.duration = 3.0
        
        self.viewDemo.layer.add(keyFrameAnimation, forKey: nil)
    }
    
}

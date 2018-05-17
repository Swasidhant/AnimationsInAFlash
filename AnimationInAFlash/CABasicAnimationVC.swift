//
//  CABasicAnimationVC.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 16/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class CABasicAnimationVC: UIViewController, CAAnimationDelegate {

    var innerLayer:CALayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupBasicLayers()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupBasicLayers() {        
        self.innerLayer = CALayer.init()
        self.innerLayer!.frame = CGRect.init(x: 50, y: 50, width: 120, height: 120)
        self.innerLayer!.backgroundColor = UIColor.red.cgColor
        self.view.layer.addSublayer(self.innerLayer!)
    }
    

    @IBAction func changeCOlorPressed(_ sender: UIButton) {
        let basicAnimation = CABasicAnimation()
//        self.innerLayer?.backgroundColor = UIColor.purple.cgColor
        basicAnimation.keyPath = "backgroundColor"
        basicAnimation.fromValue = UIColor.white.cgColor
        basicAnimation.toValue = UIColor.purple.cgColor
        basicAnimation.duration = 3.0
//        basicAnimation.delegate = self
        
        self.innerLayer!.add(basicAnimation, forKey: nil)
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        CATransaction.begin()
        CATransaction.disableActions()
        self.innerLayer?.backgroundColor = UIColor.purple.cgColor
        CATransaction.commit()
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        self.innerLayer!.backgroundColor = UIColor.red.cgColor
    }
    
    

}

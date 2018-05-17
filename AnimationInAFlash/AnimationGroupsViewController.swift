//
//  AnimationGroupsViewController.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 17/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class AnimationGroupsViewController: UIViewController {
    var innerLayer:CALayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.setupBasicLayers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupBasicLayers() {
        self.innerLayer = CALayer.init()
        self.innerLayer!.frame = CGRect.init(x: 100, y: 200, width: 20, height: 20)
        self.innerLayer?.cornerRadius = 10.0
        self.innerLayer!.backgroundColor = UIColor.red.cgColor
        self.view.layer.addSublayer(self.innerLayer!)
    }
    
    @IBAction func animatePressed(_ sender: Any) {
        
        let colorAnimation = CABasicAnimation.init()
        colorAnimation.keyPath = "backgroundColor"
        colorAnimation.toValue = UIColor.brown.cgColor
        
        let path = UIBezierPath.init()
        self.innerLayer!.backgroundColor = UIColor.brown.cgColor
        self.innerLayer!.frame = CGRect.init(x: 100-10, y: 170-10, width: 20, height: 20)
        path.move(to: CGPoint.init(x: 100, y: 200))
        path.addCurve(to: CGPoint.init(x: 100, y: 170), controlPoint1: CGPoint.init(x: 120, y: 130), controlPoint2: CGPoint.init(x: 150, y: 170))
        
        let keyframeAnimation = CAKeyframeAnimation.init()
        keyframeAnimation.keyPath = "position"
        keyframeAnimation.path = path.cgPath
        
        let animationGroup = CAAnimationGroup.init()
        animationGroup.animations = [colorAnimation, keyframeAnimation]
        animationGroup.duration = 3.0
        
        self.innerLayer?.add(animationGroup, forKey: nil)

    }
    
    
    @IBAction func resetPressed(_ sender: Any) {
        self.innerLayer!.backgroundColor = UIColor.red.cgColor
        self.innerLayer!.frame = CGRect.init(x: 100, y: 200, width: 20, height: 20)
    }
}

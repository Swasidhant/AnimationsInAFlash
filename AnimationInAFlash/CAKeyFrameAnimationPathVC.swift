//
//  CAKeyFrameAnimationPathVC.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 16/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class CAKeyFrameAnimationPathVC: UIViewController {
    var innerLayer:CALayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.setupBasicLayers()
    }

    func setupBasicLayers() {
        self.innerLayer = CALayer.init()
        self.innerLayer!.frame = CGRect.init(x: 100, y: 200, width: 20, height: 20)
        self.innerLayer?.cornerRadius = 10.0
        self.innerLayer!.backgroundColor = UIColor.red.cgColor
        self.view.layer.addSublayer(self.innerLayer!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func animatePressed(_ sender: Any) {
        
        let path = UIBezierPath.init()
        self.innerLayer!.frame = CGRect.init(x: 225, y: 150, width: 20, height: 20)
        path.move(to: CGPoint.init(x: 100, y: 200))
        path.addCurve(to: CGPoint.init(x: 100, y: 100), controlPoint1: CGPoint.init(x: 120, y: 130), controlPoint2: CGPoint.init(x: 150, y: 170))
        
        let keyframeAnimation = CAKeyframeAnimation.init()
        keyframeAnimation.keyPath = "position"
        keyframeAnimation.path = path.cgPath
        
        self.innerLayer?.add(keyframeAnimation, forKey: nil)
    }
    
    
    @IBAction func resetPreseed(_ sender: Any) {
        self.innerLayer?.frame = CGRect.init(x: 100, y: 200, width: 20, height: 20)
    }
    
}

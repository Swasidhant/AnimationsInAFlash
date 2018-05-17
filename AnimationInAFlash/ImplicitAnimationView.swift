//
//  ImplicitAnimationView.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 15/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class ImplicitAnimationView: UIView {

    var enableOurAnimation: Bool = false
    
    override func action(for layer: CALayer, forKey event: String) -> CAAction? {
        
        if event == "backgroundColor" && enableOurAnimation==true{
            let basicAnimation = CABasicAnimation.init()
            basicAnimation.fromValue = UIColor.brown.cgColor
            basicAnimation.toValue = UIColor.green.cgColor
            
            basicAnimation.duration = 1.0
            layer.add(basicAnimation, forKey: "backgroundColor")
            return basicAnimation
        } else {
            return super.action(for: layer, forKey: event)
        }
    }

}

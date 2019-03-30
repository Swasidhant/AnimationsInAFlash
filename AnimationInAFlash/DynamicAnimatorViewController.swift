//
//  DynamicAnimatorViewController.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 30/03/19.
//  Copyright © 2019 Random. All rights reserved.
//

import UIKit

class DynamicAnimatorViewController: UIViewController {
    
    var animator: UIDynamicAnimator?
    var gravity: UIDynamicBehavior?
    var collision: UICollisionBehavior?
    var snap: UIDynamicBehavior?
    
    var viewCenter: CGPoint!
    
    @IBOutlet weak var collisionBoundaryView: UIView!
    @IBOutlet weak var demoView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        springEffect()
//        initialAnimationSetting()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        viewDidLayoutSubviewsAnimationSetting()
    }

    func initialAnimationSetting() {
        self.animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior.init(items: [self.demoView])
        animator?.addBehavior(gravity!)
        
        let itemBehavior = UIDynamicItemBehavior(items: [self.demoView])
        itemBehavior.elasticity = 0.3
        animator?.addBehavior(itemBehavior)
        collision = UICollisionBehavior.init(items: [self.demoView])
        collision!.translatesReferenceBoundsIntoBoundary = true
        animator?.addBehavior(collision!)
    }
    
    

    func viewDidLayoutSubviewsAnimationSetting() {
        collision?.addBoundary(withIdentifier: "boundary" as NSCopying, for: UIBezierPath.init(rect: collisionBoundaryView!.frame))
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if snap != nil {
            animator?.removeBehavior(snap!)
        }
        
        let touch = touches.first
        snap = UISnapBehavior.init(item: self.demoView, snapTo: touch!.location(in: self.view))
        animator?.addBehavior(snap!)
    }
}


extension DynamicAnimatorViewController {
    func springEffect() {
        if viewCenter == nil {
            viewCenter = demoView.center
        }
        
        animator = UIDynamicAnimator(referenceView: self.view)
        let push = UIPushBehavior(items: [demoView], mode: UIPushBehaviorMode.instantaneous)
        push.pushDirection = CGVector.init(dx: 600, dy: 0)
        
        print(viewCenter)
        let attachement = UIAttachmentBehavior(item: demoView, attachedToAnchor: viewCenter)
        attachement.frequency = 2.0
        attachement.damping = 0.5
        
        animator?.addBehavior(attachement)
        animator?.addBehavior(push)
    }
}

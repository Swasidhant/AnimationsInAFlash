//
//  AnimationOfFrameVCViewController.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 15/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class AnimationOfFrameVCViewController: UIViewController {

    @IBOutlet weak var viewDemo: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func movePressed(_ sender: UIButton) {
        
//        print("before \(self.viewDemo.action(for: self.viewDemo.layer, forKey: "position"))")
        
        UIView.animate(withDuration: 0.3, animations: {
//            print("within animation block \(self.viewDemo.action(for: self.viewDemo.layer, forKey: "position"))")
            
            self.viewDemo.frame = CGRect.init(x: self.viewDemo.frame.origin.x + 120, y: self.viewDemo.frame.origin.y, width: self.viewDemo.frame.width, height: self.viewDemo.frame.height)
        }) { finish in

        }
    }
    
    

}

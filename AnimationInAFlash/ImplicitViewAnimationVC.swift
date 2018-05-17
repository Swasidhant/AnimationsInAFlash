//
//  ImplicitViewAnimationVC.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 15/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class ImplicitViewAnimationVC: UIViewController {

    @IBOutlet weak var viewImplicitAnimation: ImplicitAnimationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    @IBAction func resetPressed(_ sender: UIButton) {
        self.viewImplicitAnimation!.backgroundColor = UIColor.purple
    }
    
    @IBAction func movePressed(_ sender: UIButton) {
        self.viewImplicitAnimation.enableOurAnimation = true
        self.viewImplicitAnimation!.backgroundColor = UIColor.green
        self.viewImplicitAnimation.enableOurAnimation = false
    }
}

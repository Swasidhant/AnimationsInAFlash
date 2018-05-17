//
//  ImplicitAnimationsVC.swift
//  AnimationInAFlash
//
//  Created by Swasidhant Chowdhury on 15/05/18.
//  Copyright © 2018 Random. All rights reserved.
//

import UIKit

class ImplicitAnimationsVC: UIViewController {
    
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
//        let bgLayer = CALayer.init()
//        bgLayer.frame = CGRect.init(x: 10, y: 10, width: 200, height: 200)
//        bgLayer.backgroundColor = UIColor.lightGray.cgColor
//
//        self.view.layer.addSublayer(bgLayer)
        
        self.innerLayer = CALayer.init()
        self.innerLayer!.frame = CGRect.init(x: 0, y: 0, width: 20, height: 20)
        self.innerLayer!.backgroundColor = UIColor.red.cgColor
        self.view.layer.addSublayer(self.innerLayer!)
    }
    
    
    @IBAction func movePressed(_ sender: UIButton) {
        self.innerLayer!.frame = CGRect.init(x: 160, y: 0, width: 20, height: 20)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

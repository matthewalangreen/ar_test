//
//  TouchDotViewController.swift
//  tapCircleDemo
//
//  Created by Matt Green on 3/11/19.
//  Copyright © 2019 Matt Green. All rights reserved.
//

import UIKit
import SpriteKit

class TouchDotViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = DotScene(size: CGSize(width: 1536, height: 2048))
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}


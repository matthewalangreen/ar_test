//
//  DotScene.swift
//  tapCircleDemo
//
//  Created by Matt Green on 3/11/19.
//  Copyright © 2019 Matt Green. All rights reserved.
//

import SpriteKit

class DotScene: SKScene {
    
    let cameraNode = SKCameraNode()
    
    let colors = [SKColor.yellow, SKColor.red, SKColor.blue, SKColor.purple]

    var dots: [SKNode] = []
    
  
    func addDot(point: CGPoint){
        let dot = SKShapeNode(circleOfRadius: 40)
        dot.fillColor = .blue
        dot.position = point
        dots.append(dot)
        addChild(dot)
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        addDot(point: location)
    }
        
    
   
    
}



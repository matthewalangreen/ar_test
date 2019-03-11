import UIKit
import SpriteKit
import XCPlayground


let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)
let myImage


var scene = SKScene(size: frame.size)



func drawLines() {
    
    let renderer = UIGraphicsImageRenderer(size: CGSize(width: 280, height: 250))
    
    let img = renderer.image { ctx in
        ctx.cgContext.move(to: CGPoint(x: 20.0, y: 20.0))
        ctx.cgContext.addLine(to: CGPoint(x: 260.0, y: 230.0))
        ctx.cgContext.addLine(to: CGPoint(x: 100.0, y: 200.0))
        ctx.cgContext.addLine(to: CGPoint(x: 20.0, y: 20.0))
        
        ctx.cgContext.setLineWidth(10)
        ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
        
        ctx.cgContext.strokePath()
    }
    
    UIImage.image = img
}

drawLines()

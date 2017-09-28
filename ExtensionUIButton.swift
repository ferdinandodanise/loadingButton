//
//  ExtensionUIButton.swift
//
//  Created by Ferdinando Danise on 07/09/17.
//  Copyright © 2017 Ferdinando Danise. All rights reserved.
//

import UIKit

extension UIButton {
    
    func startLoading(color: UIColor) {
        
        let shapeOuter = shapeLayerOuter(color: color)
        let shapeInner = shapeLayerInner(color: color)
        
        shapeOuter.add(animationOuter(), forKey: nil)
        shapeInner.add(animationInner(), forKey: nil)
        
        self.layer.addSublayer(shapeOuter)
        self.layer.addSublayer(shapeInner)
        
    }
    
    func stopLoading(){
        
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.alpha = 0
        }) { (true) in
            self.layer.removeFromSuperlayer()
        }
        
    }
    
    private func shapeLayerOuter(color: UIColor) -> CAShapeLayer{
        
        let circleOut = UIBezierPath(arcCenter: CGPoint(x: self.bounds.midX, y: self.bounds.midY),
                                     radius: CGFloat(self.bounds.height * 0.4),
                                     startAngle: CGFloat(0),
                                     endAngle:CGFloat(Double.pi * 2),
                                     clockwise: true)
        
        
        let shapeLayerOut = CAShapeLayer()
        shapeLayerOut.path = circleOut.cgPath
        shapeLayerOut.fillColor = UIColor.clear.cgColor
        shapeLayerOut.strokeColor = color.cgColor
        shapeLayerOut.strokeStart = 0.1
        shapeLayerOut.strokeEnd = 1
        shapeLayerOut.lineWidth = 3.5
        shapeLayerOut.lineCap = "round"
        shapeLayerOut.frame = self.bounds
        
        return shapeLayerOut
        
    }
    
    private func shapeLayerInner(color: UIColor) -> CAShapeLayer{
        
        let circleIn = UIBezierPath(arcCenter: CGPoint(x: self.bounds.midX, y: self.bounds.midY),
                                    radius: CGFloat(self.bounds.height * 0.2),
                                    startAngle: CGFloat(0),
                                    endAngle: CGFloat(Double.pi * 2),
                                    clockwise: false)
        
        let shapeLayerIn = CAShapeLayer()
        shapeLayerIn.path = circleIn.cgPath
        shapeLayerIn.fillColor = UIColor.clear.cgColor
        shapeLayerIn.strokeColor = color.cgColor
        shapeLayerIn.strokeStart = 0.1
        shapeLayerIn.strokeEnd = 1
        shapeLayerIn.lineWidth = 3.2
        shapeLayerIn.lineCap = "round"
        shapeLayerIn.frame = self.bounds
        
        return shapeLayerIn
        
    }
    
    private func animationOuter() -> CABasicAnimation{
        let animationOut = CABasicAnimation(keyPath: "transform.rotation")
        animationOut.fromValue = 0
        animationOut.toValue = Double.pi * 2
        animationOut.duration = 1
        animationOut.repeatCount = Float.infinity
        
        return animationOut
    }
    
    private func animationInner() -> CABasicAnimation {
        
        let animationIn = CABasicAnimation(keyPath: "transform.rotation")
        animationIn.fromValue = 0
        animationIn.toValue = -(Double.pi * 2)
        animationIn.duration = 1
        animationIn.repeatCount = Float.infinity
        
        return animationIn
        
    }
}

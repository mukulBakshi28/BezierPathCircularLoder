//
//  AnimatorView.swift
//  BezierPathCircleView
//
//  Created by MUKUL on 26/10/18.
//  Copyright © 2018 CoderWork. All rights reserved.
//

import UIKit

 class AnimatorView: UIView {

    var sLayer:CAShapeLayer!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.drawLayer()
    }
    
  private  func drawLayer() {
         let bPath = UIBezierPath(arcCenter: self.center, radius: self.frame.size.height / 2 , startAngle: 285.0/180.0 * .pi, endAngle: 280.0/180.0 * .pi, clockwise: true)
         sLayer = CAShapeLayer()
        sLayer.path = bPath.cgPath
        sLayer.strokeColor = UIColor.red.cgColor
        sLayer.lineCap = kCALineCapRound
        sLayer.lineWidth = 3
        sLayer.fillColor =  UIColor.green.cgColor
       
        sLayer.position = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 2)
         sLayer.bounds = self.frame
         self.layer.addSublayer(sLayer)
     }
 
       func startAnimation() {
        let bAnimation = CABasicAnimation()
        bAnimation.keyPath = "strokeEnd"
        bAnimation.fromValue = 0
        bAnimation.toValue = 1
         bAnimation.duration = 5.0
        sLayer.add(bAnimation, forKey: "")
    }
    
}

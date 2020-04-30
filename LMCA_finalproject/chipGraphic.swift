//
//  chipGraphic.swift
//  LMCA_finalproject
//
//  Created by Arjun Nagpal on 4/29/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit

@IBDesignable
class chipGraphic: UIView {

    @IBInspectable var fillColor: UIColor = UIColor.black
    @IBInspectable var tabColor: UIColor = UIColor.white
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        let tabs = 5
        for i in 1...tabs {
            let change = CGFloat(i - 1)
            let lineWidth = bounds.width/8
            let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
            let radius = max(bounds.width,bounds.height)-2
            let startAngle: CGFloat = 2 * .pi * change / 5
            let endAngle: CGFloat = .pi / 15 + 2 * .pi * change / 5
            let path2 = UIBezierPath(arcCenter: center,radius: radius/2 - lineWidth/2,startAngle: startAngle,endAngle: endAngle, clockwise: true)
            path2.lineWidth = lineWidth
            tabColor.setStroke()
            path2.stroke()
        
        }
        let path3 = UIBezierPath(ovalIn:CGRect(origin: CGPoint(x: bounds.width*3/16, y: bounds.height*3/16), size: CGSize(width: bounds.width*5/8, height: bounds.height*5/8)))
        tabColor.setFill()
        path3.fill()
        
        let path4 = UIBezierPath(arcCenter: CGPoint(x: bounds.width/2, y: bounds.height/2), radius: bounds.width*68/200, startAngle: 0, endAngle: 2 * .pi, clockwise: true)
        path4.lineWidth = 1
        path4.stroke()
        
    }


}

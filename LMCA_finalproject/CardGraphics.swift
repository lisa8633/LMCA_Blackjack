//
//  CardGraphics.swift
//  LMCA_finalproject
//
//  Created by Arjun Nagpal on 4/29/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit

@IBDesignable
class CardGraphics: UIView {

    @IBInspectable var isBack: Bool = false
    @IBInspectable var BackColor: UIColor = UIColor.purple
    @IBInspectable var strokeColor1: UIColor = UIColor.white
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        //let strokeColor1 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        
        var lineWidth: CGFloat = 1.0
        
        let cardInside = UIBezierPath()
        
        cardInside.addArc(withCenter: CGPoint(x: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2), y: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: 3 * .pi / 2, endAngle: .pi, clockwise: false)
        cardInside.addArc(withCenter: CGPoint(x: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2), y: max(bounds.height-0.1*bounds.width-lineWidth/2,0.9*bounds.height-lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: .pi, endAngle: .pi/2, clockwise: false)
        cardInside.addArc(withCenter: CGPoint(x: max(0.9*bounds.width-lineWidth/2,bounds.width-0.1*bounds.height-lineWidth/2), y: max(bounds.height-0.1*bounds.width-lineWidth/2,0.9*bounds.height-lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: .pi / 2, endAngle: 0, clockwise: false)
        cardInside.addArc(withCenter: CGPoint(x: max(0.9*bounds.width-lineWidth/2,bounds.width-0.1*bounds.height-lineWidth/2), y: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: 0, endAngle: 3 * .pi/2, clockwise: false)
        cardInside.close()

        strokeColor1.setFill()
        cardInside.fill()
        
        
        if isBack {
            
            let lineWidth: CGFloat = 1.0
            
            
            let cardBack = UIBezierPath()
            
            cardBack.addArc(withCenter: CGPoint(x: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2), y: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2)), radius: min(0.04*bounds.width,0.04*bounds.height), startAngle: 3 * .pi / 2, endAngle: .pi, clockwise: false)
            cardBack.addArc(withCenter: CGPoint(x: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2), y: max(bounds.height-0.13*bounds.width-lineWidth/2,0.87*bounds.height-lineWidth/2)), radius: min(0.04*bounds.width,0.04*bounds.height), startAngle: .pi, endAngle: .pi/2, clockwise: false)
            cardBack.addArc(withCenter: CGPoint(x: max(0.87*bounds.width-lineWidth/2,bounds.width-0.13*bounds.height-lineWidth/2), y: max(bounds.height-0.13*bounds.width-lineWidth/2,0.87*bounds.height-lineWidth/2)), radius: min(0.04*bounds.width,0.04*bounds.height), startAngle: .pi / 2, endAngle: 0, clockwise: false)
            cardBack.addArc(withCenter: CGPoint(x: max(0.87*bounds.width-lineWidth/2,bounds.width-0.13*bounds.height-lineWidth/2), y: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2)), radius: min(0.04*bounds.width,0.04*bounds.height), startAngle: 0, endAngle: 3 * .pi/2, clockwise: false)
            cardBack.close()
            
            BackColor.setFill()
            cardBack.fill()
            
            
            for i in 1...15 {
                let cardDesign = UIBezierPath()
                let j = CGFloat(i)
                cardDesign.move(to: CGPoint(x: min(0.095*bounds.height,0.095*bounds.width)+min(j*0.136*bounds.height,j*0.136*bounds.width), y: min(0.095*bounds.height,0.095*bounds.width)))
                cardDesign.addLine(to: CGPoint(x: min(0.095*bounds.height,0.095*bounds.width), y: min(0.095*bounds.height,0.095*bounds.width)+min(j*0.136*bounds.height,j*0.136*bounds.width)))
                UIColor.white.setStroke()
                cardDesign.lineWidth = 1
                cardDesign.stroke()
            }
            
            
            let cardOutline = UIBezierPath()
            
            cardOutline.addArc(withCenter: CGPoint(x: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2), y: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2)), radius: min(0.07*bounds.width,0.07*bounds.height), startAngle: 3 * .pi / 2, endAngle: .pi, clockwise: false)
            cardOutline.addArc(withCenter: CGPoint(x: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2), y: max(bounds.height-0.13*bounds.width-lineWidth/2,0.87*bounds.height-lineWidth/2)), radius: min(0.07*bounds.width,0.07*bounds.height), startAngle: .pi, endAngle: .pi/2, clockwise: false)
            cardOutline.addArc(withCenter: CGPoint(x: max(0.87*bounds.width-lineWidth/2,bounds.width-0.13*bounds.height-lineWidth/2), y: max(bounds.height-0.13*bounds.width-lineWidth/2,0.87*bounds.height-lineWidth/2)), radius: min(0.07*bounds.width,0.07*bounds.height), startAngle: .pi / 2, endAngle: 0, clockwise: false)
            cardOutline.addArc(withCenter: CGPoint(x: max(0.87*bounds.width-lineWidth/2,bounds.width-0.13*bounds.height-lineWidth/2), y: min(0.13*bounds.width+lineWidth/2,0.13*bounds.height+lineWidth/2)), radius: min(0.07*bounds.width,0.07*bounds.height), startAngle: 0, endAngle: 3 * .pi/2, clockwise: false)
            cardOutline.close()
            
            cardOutline.lineWidth = lineWidth
            BackColor.setStroke()
            cardOutline.stroke()
        }
        
        let strokeColor2 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        
        lineWidth = 1.0
        
        let cardOutline = UIBezierPath()
        
        cardOutline.addArc(withCenter: CGPoint(x: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2), y: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: 3 * .pi / 2, endAngle: .pi, clockwise: false)
        cardOutline.addArc(withCenter: CGPoint(x: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2), y: max(bounds.height-0.1*bounds.width-lineWidth/2,0.9*bounds.height-lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: .pi, endAngle: .pi/2, clockwise: false)
        cardOutline.addArc(withCenter: CGPoint(x: max(0.9*bounds.width-lineWidth/2,bounds.width-0.1*bounds.height-lineWidth/2), y: max(bounds.height-0.1*bounds.width-lineWidth/2,0.9*bounds.height-lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: .pi / 2, endAngle: 0, clockwise: false)
        cardOutline.addArc(withCenter: CGPoint(x: max(0.9*bounds.width-lineWidth/2,bounds.width-0.1*bounds.height-lineWidth/2), y: min(0.1*bounds.width+lineWidth/2,0.1*bounds.height+lineWidth/2)), radius: min(0.1*bounds.width,0.1*bounds.height), startAngle: 0, endAngle: 3 * .pi/2, clockwise: false)
        cardOutline.close()
        
        cardOutline.lineWidth = lineWidth
        strokeColor2.setStroke()
        cardOutline.stroke()
        
        
    }
    

}

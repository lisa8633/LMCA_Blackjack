//
//  MultiPlayerBoardView.swift
//  LMCA_finalproject
//
//  Created by ChoongGao  Lee on 5/10/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit

@IBDesignable class MultiPlayerBoardView: UIView {

    private struct Constants {
        static let lineWidth: CGFloat = 20.0
        static let arcWidth: CGFloat = 15.0
      
      static var halfOfLineWidth: CGFloat {
        return lineWidth / 2
      }
    }
    
    @IBInspectable var feltColor: UIColor = UIColor(displayP3Red: 0.3, green: 0.7, blue: 0.3, alpha: 1)
    @IBInspectable var woodColor: UIColor = UIColor.brown
    @IBInspectable var lineColor: UIColor = UIColor.black
    

    override func draw(_ rect: CGRect) {
        let tableSurface = UIBezierPath(rect: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height))
        feltColor.setFill()
        tableSurface.fill()
        
        let arcCen = CGPoint(x:bounds.width / 2, y:-bounds.height / 8)
        let dealerArc = UIBezierPath(arcCenter: arcCen, radius: bounds.width / 4, startAngle: 0, endAngle: 360, clockwise: true)
        dealerArc.lineWidth = Constants.arcWidth
        woodColor.setFill()
        dealerArc.fill()
        lineColor.setStroke()
        dealerArc.stroke()
        
        
//        let arcCen = CGPoint(x:bounds.width + bounds.width / 8, y:bounds.height / 2)
//        let dealerArc = UIBezierPath(arcCenter: arcCen, radius: bounds.height / 4, startAngle: 0, endAngle: 360, clockwise: true)
//        dealerArc.lineWidth = Constants.arcWidth
//        woodColor.setFill()
//        dealerArc.fill()
//        lineColor.setStroke()
//        dealerArc.stroke()


    }


}

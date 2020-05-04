//
//  SinglePlayerBoardView.swift
//  LMCA_finalproject
//
//  Created by ChoongGao  Lee on 5/2/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit

@IBDesignable class SinglePlayerBoardView: UIView {

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
        
        let arcCen = CGPoint(x: bounds.width / 2, y: -(bounds.height) + bounds.height / 4 + bounds.height / 32)
        let dealerArc = UIBezierPath(arcCenter: arcCen, radius: bounds.height, startAngle: 0, endAngle: 360, clockwise: true)
        dealerArc.lineWidth = Constants.arcWidth
        woodColor.setFill()
        dealerArc.fill()
        lineColor.setStroke()
        dealerArc.stroke()
        
//        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
//
//        //create the path
//        let plusPath = UIBezierPath()
//
//        //set the path's line width to the height of the stroke
//        plusPath.lineWidth = Constants.lineWidth
//
//        //move the initial point of the path
//        //to the start of the horizontal stroke
//        plusPath.move(to: CGPoint(x: bounds.width / 2, y: 0))
//
//        //add a point to the path at the end of the stroke
//        plusPath.addLine(to: CGPoint(
//            x: bounds.width / 2,
//            y: bounds.height / 4))
//
//        lineColor.setStroke()
//        plusPath.stroke()

    }


}

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
      static let lineWidth: CGFloat = 5.0
      static let arcWidth: CGFloat = 76
      
      static var halfOfLineWidth: CGFloat {
        return lineWidth / 2
      }
    }
    
    @IBInspectable var playerColor: UIColor = UIColor.green
    @IBInspectable var dealerColor: UIColor = UIColor.green
    @IBInspectable var middleColor: UIColor = UIColor.brown
    @IBInspectable var lineColor: UIColor = UIColor.black
    

    override func draw(_ rect: CGRect) {
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        
        //create the path
        let plusPath = UIBezierPath()

        //set the path's line width to the height of the stroke
        plusPath.lineWidth = Constants.lineWidth

        //move the initial point of the path
        //to the start of the horizontal stroke
        plusPath.move(to: center)

        //add a point to the path at the end of the stroke
        plusPath.addLine(to: CGPoint(
            x: bounds.width / 2,
            y: (bounds.height / 2) + (bounds.height / 4)))
        
        lineColor.setStroke()
        plusPath.stroke()

    }


}

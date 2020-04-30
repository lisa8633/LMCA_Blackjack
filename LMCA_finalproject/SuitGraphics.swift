//
//  SuitGraphics.swift
//  LMCA_finalproject
//
//  Created by Arjun Nagpal on 4/29/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit

@IBDesignable class SuitGraphics: UIView {

    @IBInspectable var suit: String = "Spade" {
      didSet {
        if suit != "Spade" {
          //the view needs to be refreshed
          setNeedsDisplay()
        }
      }
    }
    
    override func draw(_ rect: CGRect) {
        if suit == "Spade" {
            let strokeColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            let fillColor3 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)

            let spadePath = UIBezierPath()
            spadePath.move(to: CGPoint(x: 23.42*bounds.width/100, y: 35.1*bounds.height/100))
            spadePath.addCurve(to: CGPoint(x: 47.47*bounds.width/100, y: 75.51*bounds.height/100), controlPoint1: CGPoint(x: -8.1*bounds.width/100, y: 67.41*bounds.height/100), controlPoint2: CGPoint(x: 22.55*bounds.width/100, y: 90.94*bounds.height/100))
            spadePath.addCurve(to: CGPoint(x: 37.56*bounds.width/100, y: 98*bounds.height/100), controlPoint1: CGPoint(x: 47.61*bounds.width/100, y: 83.47*bounds.height/100), controlPoint2: CGPoint(x: 41.39*bounds.width/100, y: 90.9*bounds.height/100))
            spadePath.addLine(to: CGPoint(x: 64.47*bounds.width/100, y: 98*bounds.height/100))
            spadePath.addCurve(to: CGPoint(x: 53.71*bounds.width/100, y: 75.51*bounds.height/100), controlPoint1: CGPoint(x: 60.53*bounds.width/100, y: 91.1*bounds.height/100), controlPoint2: CGPoint(x: 53.95*bounds.width/100, y: 83.49*bounds.height/100))
            spadePath.addCurve(to: CGPoint(x: 77.98*bounds.width/100, y: 35.1*bounds.height/100), controlPoint1: CGPoint(x: 79.16*bounds.width/100, y: 90.17*bounds.height/100), controlPoint2: CGPoint(x: 106.21*bounds.width/100, y: 64.6*bounds.height/100))
            spadePath.addCurve(to: CGPoint(x: 50.59*bounds.width/100, y: 2*bounds.height/100), controlPoint1: CGPoint(x: 63.26*bounds.width/100, y: 18.89*bounds.height/100), controlPoint2: CGPoint(x: 54.06*bounds.width/100, y: 6.29*bounds.height/100))
            spadePath.addCurve(to: CGPoint(x: 23.41*bounds.width/100, y: 35.1*bounds.height/100), controlPoint1: CGPoint(x: 47.43*bounds.width/100, y: 6.18*bounds.height/100), controlPoint2: CGPoint(x: 39*bounds.width/100, y: 18.47*bounds.height/100))
            spadePath.addLine(to: CGPoint(x: 23.42*bounds.width/100, y: 35.1*bounds.height/100))
            spadePath.close()
            spadePath.usesEvenOddFillRule = true
            fillColor3.setFill()
            spadePath.fill()
            strokeColor.setStroke()
            spadePath.lineWidth = 2
            spadePath.miterLimit = 4
            spadePath.stroke()
        }
        else if suit == "Heart" {
            let fillColor4 = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            
            let heartPath = UIBezierPath()
            heartPath.move(to: CGPoint(x: 26.28*bounds.width/100, y: 0*bounds.height/100))
            heartPath.addCurve(to: CGPoint(x: 0*bounds.width/100, y: 28.44*bounds.height/100), controlPoint1: CGPoint(x: 11.78*bounds.width/100, y: 0*bounds.height/100), controlPoint2: CGPoint(x: 0*bounds.width/100, y: 12.74*bounds.height/100))
            heartPath.addCurve(to: CGPoint(x: 50.06*bounds.width/100, y: 100.31*bounds.height/100), controlPoint1: CGPoint(x: 0*bounds.width/100, y: 60.37*bounds.height/100), controlPoint2: CGPoint(x: 29.77*bounds.width/100, y: 68.74*bounds.height/100))
            heartPath.addCurve(to: CGPoint(x: 100.12*bounds.width/100, y: 28.44*bounds.height/100), controlPoint1: CGPoint(x: 69.24*bounds.width/100, y: 68.93*bounds.height/100), controlPoint2: CGPoint(x: 100.12*bounds.width/100, y: 59.35*bounds.height/100))
            heartPath.addCurve(to: CGPoint(x: 73.84*bounds.width/100, y: 0*bounds.height/100), controlPoint1: CGPoint(x: 100.12*bounds.width/100, y: 12.74*bounds.height/100), controlPoint2: CGPoint(x: 88.35*bounds.width/100, y: 0*bounds.height/100))
            heartPath.addCurve(to: CGPoint(x: 50.06*bounds.width/100, y: 16.39*bounds.height/100), controlPoint1: CGPoint(x: 63.32*bounds.width/100, y: 0*bounds.height/100), controlPoint2: CGPoint(x: 54.26*bounds.width/100, y: 6.72*bounds.height/100))
            heartPath.addCurve(to: CGPoint(x: 26.28*bounds.width/100, y: 0*bounds.height/100), controlPoint1: CGPoint(x: 45.87*bounds.width/100, y: 6.72*bounds.height/100), controlPoint2: CGPoint(x: 36.81*bounds.width/100, y: 0*bounds.height/100))
            heartPath.close()
            fillColor4.setFill()
            heartPath.fill()
        }
        else if suit == "Club" {
            let fillColor2 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)

            let clubPath = UIBezierPath()
            clubPath.move(to: CGPoint(x: 50*bounds.width/100, y: 2*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 28.44*bounds.width/100, y: 24.9*bounds.height/100), controlPoint1: CGPoint(x: 38.11*bounds.width/100, y: 2*bounds.height/100), controlPoint2: CGPoint(x: 28.44*bounds.width/100, y: 12.26*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 40.46*bounds.width/100, y: 45.43*bounds.height/100), controlPoint1: CGPoint(x: 28.44*bounds.width/100, y: 33.9*bounds.height/100), controlPoint2: CGPoint(x: 33.34*bounds.width/100, y: 41.69*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 38.69*bounds.width/100, y: 47.57*bounds.height/100), controlPoint1: CGPoint(x: 42.6*bounds.width/100, y: 46.55*bounds.height/100), controlPoint2: CGPoint(x: 40.26*bounds.width/100, y: 49.46*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 22.56*bounds.width/100, y: 39.85*bounds.height/100), controlPoint1: CGPoint(x: 34.74*bounds.width/100, y: 42.84*bounds.height/100), controlPoint2: CGPoint(x: 28.98*bounds.width/100, y: 39.85*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 1*bounds.width/100, y: 62.75*bounds.height/100), controlPoint1: CGPoint(x: 10.66*bounds.width/100, y: 39.85*bounds.height/100), controlPoint2: CGPoint(x: 1*bounds.width/100, y: 50.11*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 22.56*bounds.width/100, y: 85.63*bounds.height/100), controlPoint1: CGPoint(x: 1*bounds.width/100, y: 75.39*bounds.height/100), controlPoint2: CGPoint(x: 10.66*bounds.width/100, y: 85.63*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 44.11*bounds.width/100, y: 63.04*bounds.height/100), controlPoint1: CGPoint(x: 34.36*bounds.width/100, y: 85.63*bounds.height/100), controlPoint2: CGPoint(x: 43.99*bounds.width/100, y: 75.54*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 47.34*bounds.width/100, y: 63.58*bounds.height/100), controlPoint1: CGPoint(x: 44.13*bounds.width/100, y: 60.82*bounds.height/100), controlPoint2: CGPoint(x: 47.34*bounds.width/100, y: 60.59*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 40.81*bounds.width/100, y: 98*bounds.height/100), controlPoint1: CGPoint(x: 47.34*bounds.width/100, y: 68.28*bounds.height/100), controlPoint2: CGPoint(x: 43.08*bounds.width/100, y: 93.24*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 50*bounds.width/100, y: 96.78*bounds.height/100), controlPoint1: CGPoint(x: 43.29*bounds.width/100, y: 97.33*bounds.height/100), controlPoint2: CGPoint(x: 47.44*bounds.width/100, y: 96.78*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 59.19*bounds.width/100, y: 98*bounds.height/100), controlPoint1: CGPoint(x: 52.56*bounds.width/100, y: 96.78*bounds.height/100), controlPoint2: CGPoint(x: 56.71*bounds.width/100, y: 97.33*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 52.66*bounds.width/100, y: 63.58*bounds.height/100), controlPoint1: CGPoint(x: 56.92*bounds.width/100, y: 93.24*bounds.height/100), controlPoint2: CGPoint(x: 52.66*bounds.width/100, y: 68.28*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 55.89*bounds.width/100, y: 63.04*bounds.height/100), controlPoint1: CGPoint(x: 52.66*bounds.width/100, y: 60.59*bounds.height/100), controlPoint2: CGPoint(x: 55.87*bounds.width/100, y: 60.82*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 77.44*bounds.width/100, y: 85.63*bounds.height/100), controlPoint1: CGPoint(x: 56.01*bounds.width/100, y: 75.54*bounds.height/100), controlPoint2: CGPoint(x: 65.64*bounds.width/100, y: 85.63*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 99*bounds.width/100, y: 62.75*bounds.height/100), controlPoint1: CGPoint(x: 89.34*bounds.width/100, y: 85.63*bounds.height/100), controlPoint2: CGPoint(x: 99*bounds.width/100, y: 75.39*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 77.44*bounds.width/100, y: 39.85*bounds.height/100), controlPoint1: CGPoint(x: 99*bounds.width/100, y: 50.11*bounds.height/100), controlPoint2: CGPoint(x: 89.34*bounds.width/100, y: 39.85*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 61.31*bounds.width/100, y: 47.57*bounds.height/100), controlPoint1: CGPoint(x: 71.02*bounds.width/100, y: 39.85*bounds.height/100), controlPoint2: CGPoint(x: 65.26*bounds.width/100, y: 42.84*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 59.54*bounds.width/100, y: 45.43*bounds.height/100), controlPoint1: CGPoint(x: 59.74*bounds.width/100, y: 49.46*bounds.height/100), controlPoint2: CGPoint(x: 57.4*bounds.width/100, y: 46.55*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 71.56*bounds.width/100, y: 24.9*bounds.height/100), controlPoint1: CGPoint(x: 66.66*bounds.width/100, y: 41.69*bounds.height/100), controlPoint2: CGPoint(x: 71.56*bounds.width/100, y: 33.9*bounds.height/100))
            clubPath.addCurve(to: CGPoint(x: 50*bounds.width/100, y: 2*bounds.height/100), controlPoint1: CGPoint(x: 71.56*bounds.width/100, y: 12.26*bounds.height/100), controlPoint2: CGPoint(x: 61.89*bounds.width/100, y: 2*bounds.height/100))
            clubPath.close()
            fillColor2.setFill()
            clubPath.fill()
        }
        else { //Diamond
            let fillColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)

            let diamondPath = UIBezierPath()
            diamondPath.move(to: CGPoint(x: 47.39*bounds.width/100, y: 94.99*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 23.04*bounds.width/100, y: 60.42*bounds.height/100), controlPoint1: CGPoint(x: 43.78*bounds.width/100, y: 88.69*bounds.height/100), controlPoint2: CGPoint(x: 31.85*bounds.width/100, y: 71.75*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 15*bounds.width/100, y: 49.6*bounds.height/100), controlPoint1: CGPoint(x: 18.62*bounds.width/100, y: 54.73*bounds.height/100), controlPoint2: CGPoint(x: 15*bounds.width/100, y: 49.86*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 18.62*bounds.width/100, y: 44.66*bounds.height/100), controlPoint1: CGPoint(x: 15*bounds.width/100, y: 49.34*bounds.height/100), controlPoint2: CGPoint(x: 16.63*bounds.width/100, y: 47.12*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 46.57*bounds.width/100, y: 5.54*bounds.height/100), controlPoint1: CGPoint(x: 28.27*bounds.width/100, y: 32.77*bounds.height/100), controlPoint2: CGPoint(x: 41.27*bounds.width/100, y: 14.58*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 49.98*bounds.width/100, y: 1.03*bounds.height/100), controlPoint1: CGPoint(x: 48.2*bounds.width/100, y: 2.76*bounds.height/100), controlPoint2: CGPoint(x: 49.73*bounds.width/100, y: 0.74*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 55.11*bounds.width/100, y: 8.97*bounds.height/100), controlPoint1: CGPoint(x: 50.22*bounds.width/100, y: 1.32*bounds.height/100), controlPoint2: CGPoint(x: 52.53*bounds.width/100, y: 4.89*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 79.95*bounds.width/100, y: 43.34*bounds.height/100), controlPoint1: CGPoint(x: 60.73*bounds.width/100, y: 17.86*bounds.height/100), controlPoint2: CGPoint(x: 72.98*bounds.width/100, y: 34.8*bounds.height/100))
            diamondPath.addLine(to: CGPoint(x: 85*bounds.width/100, y: 49.53*bounds.height/100))
            diamondPath.addLine(to: CGPoint(x: 79.95*bounds.width/100, y: 55.72*bounds.height/100))
            diamondPath.addCurve(to: CGPoint(x: 50.9*bounds.width/100, y: 96.96*bounds.height/100), controlPoint1: CGPoint(x: 70.79*bounds.width/100, y: 66.95*bounds.height/100), controlPoint2: CGPoint(x: 57.73*bounds.width/100, y: 85.49*bounds.height/100))
            diamondPath.addLine(to: CGPoint(x: 49.69*bounds.width/100, y: 99*bounds.height/100))
            diamondPath.addLine(to: CGPoint(x: 47.39*bounds.width/100, y: 94.99*bounds.height/100))
            diamondPath.close()
            fillColor.setFill()
            diamondPath.fill()
        }
    }
}

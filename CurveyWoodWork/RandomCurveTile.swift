//
//  RandomCurveTile.swift
//  CurveyWoodWork
//
//  Created by Kevin Smith on 4/8/20.
//  Copyright © 2020 Kevin Smith. All rights reserved.
//

import Foundation
import UIKit


class RandomCurveTile: UIView {

    var path: UIBezierPath!
    var lastX = Int.random(in: 1 ... 50)
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func draw(_ rect: CGRect) {
            
        guard let context = UIGraphicsGetCurrentContext() else {
              return
        }
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        drawMountains(in: rect, in: context, with: colorSpace)
    }
    
        private func drawMountains(in rect: CGRect, in context: CGContext,
                             with colorSpace: CGColorSpace?) {
    //        let darkColor = UIColor(red: 1.0 / 255.0, green: 93.0 / 255.0,
    //                                blue: 67.0 / 255.0, alpha: 1)
    //        let lightColor = UIColor(red: 63.0 / 255.0, green: 109.0 / 255.0,
    //                                 blue: 79.0 / 255.0, alpha: 1)
    //        let rectWidth = rect.size.width
    //
    //        let mountainColors = [darkColor.cgColor, lightColor.cgColor]
    //        let mountainLocations: [CGFloat] = [0.1, 0.2]
    //        guard let mountainGrad = CGGradient.init(colorsSpace: colorSpace,
    //              colors: mountainColors as CFArray, locations: mountainLocations) else {
    //          return
    //        }
    //
    //        let mountainStart = CGPoint(x: rect.size.height / 2, y: 100)
    //        let mountainEnd = CGPoint(x: rect.size.height / 2, y: rect.size.width)

            context.saveGState()
            defer { context.restoreGState() }

            // More coming 1...
            let backgroundMountains = CGMutablePath()
            backgroundMountains.move(to: CGPoint(x: 25, y: 0), transform: .identity)
            //backgroundMountains.addQuadCurve(to: CGPoint(x: 77, y: 157),
    //                                         control: CGPoint(x: 30, y: 129),
    //                                         transform: .identity)
            
            let number = Int.random(in: 10 ..< 40)
            print("first number: \(number)")
//            backgroundMountains.addCurve(to: CGPoint(x: 20, y: 100),
//                                         control1: CGPoint(x: -20, y:  00),
//                                         control2: CGPoint(x: 70, y: 100),
//            transform: .identity)
            backgroundMountains.addQuadCurve(to: CGPoint(x: 20, y: 100), control: CGPoint(x: Int.random(in: -80 ... 80), y:  Int.random(in: 20 ... 60)))
            lastX = number
            print("second number: \(number)")
            print(lastX)

            // More coming 2...
        //    backgroundMountains.addQuadCurve(to: CGPoint(x: 77, y: 157),
        //    control: CGPoint(x: 30, y: 129), transform: .identity)
            
            // Background Mountain Stroking
            context.addPath(backgroundMountains)
            context.setStrokeColor(UIColor.black.cgColor)
            context.setLineWidth(5)
            context.strokePath()

            // More coming 3...


          }


}

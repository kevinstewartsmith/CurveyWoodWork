//
//  DemoView.swift
//  PathsNLayers
//
//  Created by Kevin Smith on 3/25/20.
//  Copyright © 2020 Kevin Smith. All rights reserved.
//

import UIKit

class DemoView: UIView {


    
    

    var path: UIBezierPath!
     
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.backgroundColor = UIColor.orange
    }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    
    override func draw(_ rect: CGRect) {
        //self.createRectangle()
        guard let context = UIGraphicsGetCurrentContext() else {
          return
        }
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        drawMountains(in: rect, in: context, with: colorSpace)

    }

 
    
    
    private func drawMountains(in rect: CGRect, in context: CGContext,
                         with colorSpace: CGColorSpace?) {


        context.saveGState()
        defer { context.restoreGState() }

        let backgroundMountains = CGMutablePath()
        backgroundMountains.move(to: CGPoint(x: 157, y: -2), transform: .identity)

        
        
        backgroundMountains.addCurve(to: CGPoint(x: 125, y: 242),
        control1: CGPoint(x: -110, y: 70),
        control2: CGPoint(x: 360, y: 180),
        transform: .identity)



        

        context.addPath(backgroundMountains)
        context.setStrokeColor(UIColor.white.cgColor)
        context.setLineWidth(5)
        context.strokePath()

  


      }

    
}

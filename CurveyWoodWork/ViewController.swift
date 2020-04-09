//
//  ViewController.swift
//  CurveyWoodWork
//
//  Created by Kevin Smith on 4/7/20.
//  Copyright © 2020 Kevin Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let width: CGFloat = 50
    var height: CGFloat = 100
    var tileView : UIView?
    let randoCurve : RandomCurveTile? = nil
    var verticalCursor : CGFloat = 40
    var tileCount = 0
    
    var button : UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("height \(self.view.frame.height)")
        tileView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 156))
        tileView?.backgroundColor = UIColor.white
        self.view.addSubview(tileView!)

        let randoCurve = RandomCurveTile(frame: CGRect(x: 0 , y: 40, width: width, height: height))
        self.view.addSubview(randoCurve)
        verticalCursor += 100
        tileCount += 1
    }


    @IBAction func fuckItUpPressed(_ sender: UIButton) {
        
        var x : CGFloat = 0
        if tileCount < 7 {
            x = 0
        } else if tileCount >= 7 && tileCount < 14 {
           x = width
            if tileCount == 7 {
                verticalCursor = 40
            }
        } else if tileCount >= 14 && tileCount < 21 {
            x = CGFloat(width * 2)
            if tileCount == 14 {
                verticalCursor = 40
            }
        } else if tileCount >= 21 && tileCount < 28 {
            x = width * 3
            if tileCount == 21 {
                verticalCursor = 40
            }
        }else if tileCount >= 28 && tileCount < 35 {
            x = width * 4
            if tileCount == 28 {
                verticalCursor = 40
            }
        }else if tileCount >= 35 && tileCount < 42 {
            x = width * 5
            if tileCount == 35 {
                verticalCursor = 40
            }
        }else if tileCount >= 42 && tileCount < 49 {
            x = width * 6
            if tileCount == 42 {
                verticalCursor = 40
            }
        }else if tileCount >= 49 && tileCount < 56 {
            x = width * 7
            if tileCount == 49 {
                verticalCursor = 40
            }
        } else {
            return
        }
        let newCurve = RandomCurveTile(frame:  CGRect(x: x , y:verticalCursor , width: width, height: height))
        self.view.addSubview(newCurve)
        
        verticalCursor += 100
        print(verticalCursor)
        tileCount += 1
    }
    
    


}


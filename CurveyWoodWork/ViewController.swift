//
//  ViewController.swift
//  CurveyWoodWork
//
//  Created by Kevin Smith on 4/7/20.
//  Copyright © 2020 Kevin Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let width: CGFloat = 240
    var height: CGFloat = 240
    let randoCurve : RandomCurveTile? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        
        let demoView3 = DemoView(frame: CGRect(x: self.view.frame.size.width/2 - width/2 , y: 40, width: width, height: height))
                self.view.addSubview(demoView3)
        let randoCurve = RandomCurveTile(frame: CGRect(x: self.view.frame.size.width/2 - width/2 , y: 280, width: width, height: height))
        self.view.addSubview(randoCurve)
        

    }


    @IBAction func fuckItUpPressed(_ sender: UIButton) {
        //height = height + 240
        let newCurve = RandomCurveTile(frame: CGRect(x: self.view.frame.size.width/2 - width/2 , y: 280, width: width, height: height))
        self.view.addSubview(newCurve)
    }
    


}


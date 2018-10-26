//
//  ViewController.swift
//  BezierPathCircleView
//
//  Created by MUKUL on 26/10/18.
//  Copyright © 2018 CoderWork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: AnimatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         myView.startAnimation()
     }
 
}


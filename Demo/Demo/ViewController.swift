//
//  ViewController.swift
//  Demo
//
//  Created by Shoaib Akhtar on 28/10/2018.
//  Copyright © 2018 Shoaib Akhtar. All rights reserved.
//

import UIKit
import SBAProgressHud

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)

//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            SBAProgressHud.hideHud(from: self.view)
//        }
    }


}


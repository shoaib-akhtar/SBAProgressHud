//
//  PresentedViewController.swift
//  Demo
//
//  Created by Shoaib Akhtar on 28/10/2018.
//  Copyright © 2018 Shoaib Akhtar. All rights reserved.
//

import UIKit
import SBAProgressHud
class PresentedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

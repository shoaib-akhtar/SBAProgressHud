//
//  ViewController.swift
//  Demo
//
//  Created by Shoaib Akhtar on 28/10/2018.
//  Copyright © 2018 Shoaib Akhtar. All rights reserved.
//

import UIKit
import SBAProgressHud

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView.init(frame: CGRect.zero)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            SBAProgressHud.showHud(to: view,removeAfter: 2)
        case 1:
            SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        case 2:
            SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        case 3:
            SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        case 4:
            SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        default:
            print("Empty")
        }
    }


}


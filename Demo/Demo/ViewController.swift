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
        
        switch indexPath.section {
            
        case 0:
            switch indexPath.row {
            case 0:
                SBAProgressHud.showHud(removeAfter: 2)
            case 1:
                SBAProgressHud.showHud(title: "Loading...",removeAfter: 2)
            case 2:
                SBAProgressHud.showHud(title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
            case 3:
                SBAProgressHud.showHud(title: "Loading...",dimBackground: true,removeAfter: 2)
            case 4:
                SBAProgressHud.showHud(title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
            case 5:
                SBAProgressHud.showHud(title: "Loading...", tintColor: UIColor.white,indicatorBgColor: UIColor.black.withAlphaComponent(0.8),removeAfter: 3)
            default:
                print("Empty")
            }
            
        case 1:
            switch indexPath.row {
            case 0:
                SBAProgressHud.showHud(title: "Success",type: .success,dimBackground: true,removeAfter: 2)
            case 1:
                SBAProgressHud.showHud(title: "Error",type: .error,dimBackground: true,removeAfter: 2)
            
            default:
                print("Empty")
            }
        case 2:
            switch indexPath.row {
            case 0:
                SBAProgressHud.showHud(title: "Snake",type: .snake, dimBackground: true,removeAfter: 2)
            case 1:
                SBAProgressHud.showHud(title: "Circular",type: .circular, dimBackground: true,removeAfter: 2)
           
                
            default:
                print("Empty")
            }
        
        default:
        print("Empty")
    
    }
    }


}


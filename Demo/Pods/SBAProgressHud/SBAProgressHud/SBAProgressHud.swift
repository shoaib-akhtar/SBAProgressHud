//
//  SBAProgressHud.swift
//  Demo
//
//  Created by Shoaib Akhtar on 28/10/2018.
//  Copyright © 2018 Shoaib Akhtar. All rights reserved.
//

import UIKit
public enum SBAProgressType: Int{
    case indeterminate
}
public class SBAProgressHud{
    public static func showHud(to view: UIView,title: String? = nil,type: SBAProgressType = .indeterminate,tintColor: UIColor = .darkGray,dimBackground: Bool = false,removeAfter: Double? = nil){
        SBAProgressHudInternal.shared.showHud(to: view, title: title, type: type, tintColor: tintColor, dimBackground: dimBackground, removeAfter: removeAfter)
    }
    public static func hideHud(from view: UIView){
        SBAProgressHudInternal.shared.hideHud(from: view)
    }
    
}
fileprivate class SBAProgressHudInternal {
    static let shared = SBAProgressHudInternal()
    private var progressViewController: SBAProgressViewController?
    
    public func showHud(to view: UIView,title: String? = nil,type: SBAProgressType = .indeterminate,tintColor: UIColor = .darkGray,dimBackground: Bool = false,removeAfter: Double? = nil){
        // Hiding already presented hud
        hideHud(from: view)
        //
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        
        alertWindow.rootViewController = SBAProgressRootViewController()
        
        alertWindow.windowLevel = UIWindow.Level.normal + 1;
        alertWindow.makeKeyAndVisible()
        
        progressViewController = SBAProgressViewController.initFromStoryboard()
        alertWindow.rootViewController?.present(progressViewController!, animated: true, completion: nil)
        
        progressViewController?.setUp(with: title, tintColor: tintColor, dimBackground: dimBackground, removeAfter: removeAfter)
        
        if let removeAfter = removeAfter{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0 * removeAfter) {
                self.hideHud(from: view)
            }
        }
        
        
    }
    public func hideHud(from view: UIView){
        if let progressViewController = progressViewController{
            progressViewController.view.window?.isHidden = true
            progressViewController.dismiss(animated: true, completion: nil)
            self.progressViewController = nil
        }
    }
    
}

fileprivate class SBAProgressRootViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return UIApplication.shared.statusBarStyle
        }
    }
}

class SBAProgressViewController: UIViewController,StoryboardInitializable {
    static func storyboardName() -> String {
        return "SBAProgressHud"
    }
    @IBOutlet weak var activityView: UIView!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return UIApplication.shared.statusBarStyle
        }
    }
    
    func setUp(with title: String? = nil,tintColor: UIColor = .darkGray,dimBackground: Bool = false,removeAfter: Double? = nil) {
        
        if let title = title, !title.isEmpty{
            labelTopConstraint.constant = 8
        }
        
        titleLabel.text = title
        titleLabel.textColor = tintColor
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
        titleLabel.numberOfLines = 0
        
        
        activityIndicatorView.startAnimating()
        activityIndicatorView.color = tintColor
        
        activityView.layer.cornerRadius = 5.0
        activityView.layer.masksToBounds = true
        
        if dimBackground{
            view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
            
        }else{
            view.backgroundColor = UIColor.clear
        }
        
    }
}

protocol StoryboardInitializable {
    static var storyboardIdentifier: String { get }
    static func storyboardName() -> String
}

extension StoryboardInitializable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
    
    static func initFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: storyboardName(), bundle: Bundle.init(for: self))
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

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
    case success
    case error
    case snake
    case circular
    case eclipse
}
public class SBAProgressHud{

    public static func showHud(title: String? = nil,type: SBAProgressType = .indeterminate,tintColor: UIColor = .darkGray,indicatorBgColor: UIColor = .white,dimBackground: Bool = false,removeAfter: Double? = nil){
        SBAProgressHudInternal.shared.showHud(title: title, type: type, tintColor: tintColor,indicatorBgColor: indicatorBgColor, dimBackground: dimBackground, removeAfter: removeAfter)
    }
    public static func hideHud(){
        SBAProgressHudInternal.shared.hideHud()
    }
    
}
fileprivate class SBAProgressHudInternal {
    static let shared = SBAProgressHudInternal()
    private var progressViewController: SBAProgressViewController?
    var window : UIWindow?
    public func showHud(to view: UIView? = nil,title: String? = nil,type: SBAProgressType = .indeterminate,tintColor: UIColor = .darkGray,indicatorBgColor: UIColor,dimBackground: Bool = false,removeAfter: Double? = nil){
        // Hiding already presented hud
        hideHud(from: view)
        //
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        self.window = alertWindow
        alertWindow.rootViewController = SBAProgressRootViewController()
        
        alertWindow.windowLevel = UIWindow.Level.normal + 1;
        alertWindow.makeKeyAndVisible()
        
        progressViewController = SBAProgressViewController.initFromStoryboard()
        alertWindow.rootViewController?.present(progressViewController!, animated: true, completion: nil)
        
        progressViewController?.setUp(with: title,type: type, tintColor: tintColor,indicatorBgColor: indicatorBgColor, dimBackground: dimBackground, removeAfter: removeAfter)
        
        if let removeAfter = removeAfter{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0 * removeAfter) {
                self.hideHud(from: view)
            }
        }
        
        
    }
    public func hideHud(from view: UIView? = nil){
        if let progressViewController = progressViewController{
            progressViewController.view.window?.isHidden = true
            progressViewController.dismiss(animated: true, completion: nil)
            progressViewController.activityView = nil
            progressViewController.activityIndicatorView = nil
            progressViewController.titleLabel = nil
            progressViewController.indicatorImageView = nil
            progressViewController.labelTopConstraint = nil

            self.progressViewController = nil
        }
        self.window = nil
    }
    
}

fileprivate class SBAProgressRootViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return UIApplication.shared.statusBarStyle
        }
    }
    deinit {
        print("SBAProgressRootViewController deallocated")
    }
}

class SBAProgressViewController: UIViewController,StoryboardInitializable {
    static func storyboardName() -> String {
        return "SBAProgressHud"
    }
    @IBOutlet weak var activityView: UIView!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var indicatorImageView: UIImageView!

    
    @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return UIApplication.shared.statusBarStyle
        }
    }
    func bundle() -> Bundle {
        return Bundle.init(for: SBAProgressViewController.self)
    }
    func image(named: String) -> UIImage? {
        let image = UIImage.init(named: named, in: bundle(), compatibleWith: nil)?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
        return image
    }
    private func rotateView(targetView: UIView, duration: Double = 1.0,option: UIView.AnimationOptions = .curveLinear) {
        UIView.animate(withDuration: duration, delay: 0.0, options: option, animations: {
            targetView.transform = targetView.transform.rotated(by: CGFloat(Float.pi))
        }) { finished in
            self.rotateView(targetView: targetView, duration: duration)
        }
    }
    
    func setUp(with title: String? = nil,type: SBAProgressType = .indeterminate,tintColor: UIColor = .darkGray,indicatorBgColor: UIColor,dimBackground: Bool = false,removeAfter: Double? = nil) {
        
        if let title = title, !title.isEmpty{
            labelTopConstraint.constant = 8
        }
        
        titleLabel.text = title
        titleLabel.textColor = tintColor
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
        titleLabel.numberOfLines = 0
        activityView.layer.cornerRadius = 5.0
        activityView.layer.masksToBounds = true
        
        activityView.backgroundColor = indicatorBgColor
        
        // Customisation
        activityView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.2).cgColor
        activityView.layer.borderWidth = 0.5
        
        // Applying tint
        activityIndicatorView.color = tintColor
        indicatorImageView.tintColor = tintColor
        
        // Hiding all views
        activityIndicatorView.isHidden = true
        indicatorImageView.isHidden = true
        //
        
        
        switch type {
        case .indeterminate:
            activityIndicatorView.isHidden = false
            activityIndicatorView.startAnimating()
        case .success:
            indicatorImageView.isHidden = false
            indicatorImageView.image = image(named: "SBATick")
        case .error:
            indicatorImageView.isHidden = false
            indicatorImageView.image = image(named: "SBACross")
        case .snake:
            indicatorImageView.isHidden = false
            indicatorImageView.image =  image(named: "SBASnake")
            rotateView(targetView: indicatorImageView,duration: 0.5)
        case .circular:
            indicatorImageView.isHidden = false
            indicatorImageView.image =  image(named: "SBACircular")
            rotateView(targetView: indicatorImageView,duration: 0.5)
        case .eclipse:
            indicatorImageView.isHidden = false
            indicatorImageView.image =  image(named: "SBAEclipse")
            rotateView(targetView: indicatorImageView,duration: 0.5)
        }
        

        if dimBackground{
            view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
            
        }else{
            view.backgroundColor = UIColor.clear
        }
        
    }
    deinit {
        print("SBAProgressViewController deallocated")
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


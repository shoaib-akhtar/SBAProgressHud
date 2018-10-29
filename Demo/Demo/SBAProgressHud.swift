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
public class SBAProgressHud {
    static let shared = SBAProgressHud()
    private var progressViewController: SBAProgressViewController?
    
    public func showHud(to view: UIView,title: String? = nil,type: SBAProgressType = .indeterminate,tintColor: UIColor = .darkGray,dimBackground: Bool = false,removeAfter: Double? = nil){
        // Hiding already presented hud
        hideHud(from: view)
        //
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = UIViewController()
        alertWindow.windowLevel = UIWindow.Level.alert + 1;
        alertWindow.makeKeyAndVisible()
        progressViewController = SBAProgressViewController()
        alertWindow.rootViewController?.present(progressViewController!, animated: false, completion: nil)
        
        let baseView = UIView(frame: alertWindow.frame)
        baseView.backgroundColor = .clear
        progressViewController!.view.addSubview(baseView)
        
        addProgress(to: baseView,title: title,tintColor:tintColor,dimBackground: dimBackground,removeAfter: removeAfter)
        
    }
    public func hideHud(from view: UIView){
        if let progressViewController = progressViewController{
            progressViewController.dismiss(animated: false, completion: nil)
            self.progressViewController = nil
        }
    }
    
    private func addProgress(to view: UIView,title: String? = nil,tintColor: UIColor = .darkGray,dimBackground: Bool = false,removeAfter: Double? = nil) {
        let activityLabel = UILabel()
        let activityIndicatorView = UIActivityIndicatorView(style: .whiteLarge)
        
        let bgView = UIView()
        bgView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bgView)
        view.bringSubviewToFront(bgView)
        
        bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bgView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        if dimBackground{
            bgView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
            
        }else{
            bgView.backgroundColor = UIColor.clear
        }
        
        
        
        let activityView = UIView()
        bgView.addSubview(activityView)
        
        activityView.translatesAutoresizingMaskIntoConstraints = false
        
        activityView.centerXAnchor.constraint(equalTo: bgView.centerXAnchor).isActive = true
        activityView.centerYAnchor.constraint(equalTo: bgView.centerYAnchor).isActive = true
        activityView.heightAnchor.constraint(equalTo: activityView.widthAnchor, multiplier: 1.0/1.0).isActive = true
        activityView.backgroundColor = .clear
        activityView.layer.cornerRadius = 5.0
        activityView.layer.masksToBounds = true
        
        // Adding blurr view
        let blurr = UIVisualEffectView(effect: UIBlurEffect(style: .extraLight))
        activityView.addSubview(blurr)
        
        blurr.translatesAutoresizingMaskIntoConstraints = false
        blurr.centerXAnchor.constraint(equalTo: activityView.centerXAnchor).isActive = true
        blurr.centerYAnchor.constraint(equalTo: activityView.centerYAnchor).isActive = true
        blurr.widthAnchor.constraint(equalTo: activityView.widthAnchor).isActive = true
        blurr.heightAnchor.constraint(equalTo: activityView.heightAnchor).isActive = true
        //
        
        
        activityView.addSubview(activityIndicatorView)
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        activityIndicatorView.color = tintColor
        
        
        activityIndicatorView.topAnchor.constraint(equalTo: activityView.topAnchor, constant: 25).isActive = true
        
        let leadingActivityIndicatorView = activityIndicatorView.leadingAnchor.constraint(greaterThanOrEqualTo: activityView.leadingAnchor, constant: 25)
        leadingActivityIndicatorView.isActive = true
        
        let trailingActivityIndicatorView = activityIndicatorView.trailingAnchor.constraint(greaterThanOrEqualTo: activityView.trailingAnchor, constant: -25)
        trailingActivityIndicatorView.isActive = true
        
        activityIndicatorView.centerXAnchor.constraint(equalTo: activityView.centerXAnchor).isActive = true
        
        
        if  title == nil{
            let bottom = activityIndicatorView.bottomAnchor.constraint(greaterThanOrEqualTo: activityView.bottomAnchor, constant: -25)
            bottom.isActive = true
        }else
        {
            leadingActivityIndicatorView.isActive = false
            trailingActivityIndicatorView.isActive = false
        }
        
        
        activityIndicatorView.startAnimating()
        
        if let title = title {
            activityView.addSubview(activityLabel)
            activityLabel.translatesAutoresizingMaskIntoConstraints = false
            
            activityLabel.topAnchor.constraint(equalTo: activityIndicatorView.bottomAnchor, constant: 8).isActive = true
            activityLabel.bottomAnchor.constraint(equalTo: activityView.bottomAnchor, constant: -25).isActive = true
            activityLabel.leadingAnchor.constraint(equalTo: activityView.leadingAnchor, constant: 8).isActive = true
            activityLabel.trailingAnchor.constraint(equalTo: activityView.trailingAnchor, constant: -8).isActive = true
            activityLabel.text = title
            activityLabel.textColor = tintColor
            activityLabel.textAlignment = .center
            activityLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .medium)
        }
        
        if let removeAfter = removeAfter{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0 * removeAfter) {
                self.hideHud(from: view)
            }
        }
        
        
    }
}

fileprivate class SBAProgressViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return .lightContent
        }
    }
    
}

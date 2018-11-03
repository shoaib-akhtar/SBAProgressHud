//
//  SBAProgressHudTests.swift
//  SBAProgressHudTests
//
//

import XCTest
@testable import SBAProgressHud

class SBAProgressHudTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Apply styles --------------

    func testApplyStyles() {
        // Initial style test
        let view = UIView()
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.showHud(to: view,removeAfter: 2)
        SBAProgressHud.showHud(to: view,title: "Loading...",removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...",dimBackground: true,removeAfter: 2)
        SBAProgressHud.showHud(to: view, title: "Loading...", tintColor: UIColor.orange,removeAfter: 3)
        
        SBAProgressHud.hideHud(from: view)
    }

    // MARK: - Layout --------------

    func testLayouts() {
    }
}

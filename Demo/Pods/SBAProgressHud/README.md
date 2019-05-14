# SBAProgressHud
SBAProgressHud is a simple and easy-to-use progress HUD for your iOS apps written in Swift.

![CocoaPods](https://cocoapod-badges.herokuapp.com/v/SBAProgressHud/badge.png)

<a href="https://imgflip.com/gif/2lm4y6"><img src="https://i.imgflip.com/2lm4y6.gif" title="made at imgflip.com"/></a>

[![](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/1-small.PNG)](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/1.PNG)
[![](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/2-small.PNG)](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/2.PNG)
[![](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/3-small.PNG)](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/3.PNG)
[![](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/4-small.PNG)](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/4.PNG)
[![](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/5-small.PNG)](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/5.PNG)
[![](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/6-small.PNG)](https://raw.githubusercontent.com/shoaib-akhtar/SBAProgressHud/master/images/6.PNG)


Installation
------------

Use [CocoaPods](http://cocoapods.org).

```ruby
pod 'SBAProgressHud'
```
Usage
-----
Show hud in view

```swift
SBAProgressHud.showHud(to: view,title: "Loading...")
```

Hide hud from view

```swift
SBAProgressHud.hideHud(from: view)
```

Customization

```swift
SBAProgressHud.showHud(to: view, title: "Loading..", tintColor: UIColor.orange, dimBackground: true, removeAfter: 5)
```

Congratulations! You're done.

License
-------

SBAProgressHud is under [MIT](https://opensource.org/licenses/MIT). See [LICENSE](LICENSE) file for more info.

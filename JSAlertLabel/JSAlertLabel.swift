//
//  JSAlertLabel.swift
//  JSAlertLabel
//
//  Created by 王俊硕 on 2017/11/4.
//  Copyright © 2017年 王俊硕. All rights reserved.
//

import UIKit

class JSAlertLabel: UILabel {

    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var removeControl: UIControl! // Entire screen 全屏
    var isOffScreen = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    /// Show in the mid of the screen
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: screenWidth/5, height: 30))
        center = CGPoint(x: screenWidth / 2 , y: screenHeight / 2)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /// Basic Setting
    private func setup() {
        removeControl = UIControl(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        removeControl.addTarget(self, action: #selector(self.tapped), for: .allEvents)
        
        backgroundColor = UIColor.black
        alpha = 0
        layer.cornerRadius = 2
        clipsToBounds = true
        numberOfLines = 1
        textAlignment = .center
    }
    
    /** Show in 0.2s, Disapearing in 0.3s. Default width=ScreenWidth/2, height=20
     出现动画0.2秒 消失动画0.3秒 呈现在屏幕上的时间=delay。最大长度屏幕宽度/2 高度20
     */
    public func show(text: String, onView view: UIView, removeAfter delay: Double) {
        if isOffScreen {
            print("GO")
            attributedText = NSAttributedString(string: text, attributes: [NSAttributedStringKey.foregroundColor : UIColor.white, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15)])
            
            view.addSubview(self)
            view.addSubview(removeControl)
            UIView.animate(withDuration: 0.2, delay: 0, options: [], animations: {
                self.isOffScreen = false
                self.alpha = 0.6
            }) { (state) in
                if state { // Normal, Delayed 正常执行 有延迟
                    UIView.animate(withDuration: 0.3, delay: delay, options: [], animations: { //
                        self.alpha = 0
                    }) { _ in
                        self.reset()
                    }
                } else { // Show Animation Forcedly Stoped  强行停止显示动画 直接消失
                    UIView.animate(withDuration: 0.2, animations: {
                        self.alpha = 0
                    }) { _ in
                        self.reset()
                    }
                }
            }
        }
    }
    /// Invoked after disappeared to resset the state
    private func reset() {
        isOffScreen = true
        removeFromSuperview()
        removeControl.removeFromSuperview()
    }
    /// Cease Animation
    @objc private func tapped() {
        if !isOffScreen {
            self.layer.removeAllAnimations()
        }
    }
    
}

# JSAlertLabel
![Build](https://img.shields.io/travis/rust-lang/rust.svg) 
![Language](https://img.shields.io/badge/swift-4.0-orange.svg)

## 示例
![Demo](https://github.com/DevNewbee/JSAlertLabel/blob/master/AlertLabelDemo.gif)

## 使用

1. 可以用UILabel的各种属性来设置   
2.  点击屏幕任意地方可以立即移除

### 初始化 
    lazy var alertLabel = JSAlertLabel()  //Initial a JSAlertLabel 
    
### 显示
调用`show(text:onView:removeAfter:)`方法即可

    alertLabel.show(text: "你好", onView: view, removeAfter: 1.5  ) //Simply Call show(text:onView:removeAfter:)

默认位置为屏幕正中间

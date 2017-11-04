# JSAlertLabel
![Build](https://img.shields.io/travis/rust-lang/rust.svg) 
![Language](https://img.shields.io/badge/swift-4.0-orange.svg)

调用`show`方法后在`View`上加载一个提示文本框，点击任意地方立即移除或者在设定好的时间消失。  
只需一行代码每次传入不同的文本便可重复使用。

## 示例
![Demo](https://github.com/DevNewbee/JSAlertLabel/blob/master/AlertLabelDemo.gif)

## 使用

- 可以用UILabel的各种属性来设置   
- 点击屏幕任意地方可以立即移除

### 1. 初始化 
    lazy var alertLabel = JSAlertLabel()  //Initial a JSAlertLabel 
    
### 2. 显示
调用`show(text:onView:removeAfter:)`方法即可

    alertLabel.show(text: "你好", onView: view, removeAfter: 1.5  ) //Simply Call show(text:onView:removeAfter:)

`alertLabel` 将会在被显示在`view`上然后`1.5`秒后移除。
默认位置为屏幕正中间。
> 通过设置`frame`来改变位置，就像UILdabel一样。
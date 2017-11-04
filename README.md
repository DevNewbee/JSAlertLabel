# JSAlertLabel
![Demo](https://github.com/DevNewbee/JSAlertLabel/blob/master/AlertLabelDemo.gif)

## 使用 Usage

可以用UILabel的各种属性来设置   
>Set the appearence with method and property available in UILabel.

### 初始化 
    lazy var alertLabel = JSAlertLabel()  //Initial a JSAlertLabel 
    
### 显示
调用`show(text:onView:removeAfter:)`方法即可

    alertLabel.show(text: "你好", onView: view, removeAfter: 1.5  ) //Simply Call show(text:onView:removeAfter:)

默认位置为屏幕正中间
The defult position is set by the default initializer at the middle of the screen.

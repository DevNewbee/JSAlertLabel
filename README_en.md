# JSAlertLabel
![Demo](https://github.com/DevNewbee/JSAlertLabel/blob/master/AlertLabelDemo.gif)

## Usage
1. Set the appearence with methods and properties available in UILabel.   
2. Tap anywhere in the screen to immediately remove the alert lavel.

### Initialization 
    lazy var alertLabel = JSAlertLabel()  //Initial a JSAlertLabel 
    
### Show
Simply Call show(text:onView:removeAfter:)

    alertLabel.show(text: "你好", onView: view, removeAfter: 1.5  ) 

The defult position is set by the default initializer at the middle of the screen.

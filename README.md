# JSAlertLabel
![Build Pass](https://img.shields.io/travis/rust-lang/rust.svg)
![Language](https://img.shields.io/badge/swift-4.0-orange.svg)

Showing some text on the view and disappearing after the preset delay or by touch anywhere in the screen.	
Simply pass the different text to reuse.

[中文](https://github.com/DevNewbee/JSAlertLabel/blob/master/README_ch.md)
## Example

![Demo](https://github.com/DevNewbee/JSAlertLabel/blob/master/AlertLabelDemo.gif)

## Usage
- Set the appearence with methods and properties available in `UILabel`.   
- Tap anywhere in the screen to immediately remove the alert label.

### 1. Initialization 
    lazy var alertLabel = JSAlertLabel()  //Initial a JSAlertLabel 
    
### 2. Show
Simply Call `show(text:onView:removeAfter:)` 

    alertLabel.show(text: "你好", on: aView, removeAfter: 1.5  ) 

The `alertLabel ` will be displayed on the `aView` and then be removed after `1.5` seconds.
The defult position is set by the default initializer at the middle of the screen. 		
> Set the `frame` to change the position. Just like UILabel.

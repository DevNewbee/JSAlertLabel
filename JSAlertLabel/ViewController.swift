//
//  ViewController.swift
//  JSAlertLabel
//
//  Created by 王俊硕 on 2017/11/4.
//  Copyright © 2017年 王俊硕. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var alertLabel = JSAlertLabel()
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testButton.layer.cornerRadius = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testButtonTapped(_ sender: Any) {
        alertLabel.show(text: "你好", onView: view, removeAfter: 1.5  )
    }
    
}


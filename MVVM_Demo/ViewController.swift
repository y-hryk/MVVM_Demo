//
//  ViewController.swift
//  MVVM_Demo
//
//  Created by yamaguchi on 2016/04/04.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .RoundedRect)
        button.frame = CGRectMake(0, 100, 100, 50)
        
        view.addSubview(button)
    }

}


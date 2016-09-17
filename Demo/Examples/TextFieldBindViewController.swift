//
//  TextFieldBindViewController.swift
//  Demo
//
//  Created by yamaguchi on 2016/09/15.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TextFieldBindViewController: UIViewController {
    
    var textField: UITextField!
    var label: UILabel!
    let disposeBag = DisposeBag()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let margin: CGFloat = 10
        self.view.backgroundColor = UIColor.white
        
        // textfiled
        self.textField = UITextField()
        self.textField.frame = CGRect(x: margin, y: 100,
                                      width: self.view.frame.width - (margin * 2), height: 50)
        self.textField.borderStyle = .line
        self.view.addSubview(self.textField)
        
        // label
        self.label = UILabel()
        self.label.frame = CGRect(x: margin, y: 200 + margin,
                                  width: self.view.frame.width - (margin * 2), height: 50)
        self.label.backgroundColor = UIColor.orange
        self.view.addSubview(self.label)
        
        // bind
        self.textField.rx.text
        .map { $0.description }
        .bindTo(self.label.rx.text)
        .addDisposableTo(disposeBag)
    }

}


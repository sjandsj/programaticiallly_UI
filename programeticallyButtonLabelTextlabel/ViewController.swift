//
//  ViewController.swift
//  programeticallyButtonLabelTextlabel
//
//  Created by mac on 12/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
      var label: UILabel = UILabel()
      var txtField: UITextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        newButton()
        newLabel()
        newTextField()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func newButton() {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 145, y: 100, width: 100, height: 50)
        button.backgroundColor = UIColor.green
        button.setTitle("Click Here", for: UIControlState.normal)
        button.addTarget(self, action: #selector(self.pressButton(_:)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func pressButton(_ sender: UIButton){
        label.text = "Jain"
    }
    
    func newLabel() {
        label.frame = CGRect(x: 150, y: 200, width: 100, height: 50)
        label.backgroundColor = UIColor.yellow
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.text = "Shubhanshu"
        self.view.addSubview(label)
    }

    func newTextField() {
        txtField.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        txtField.placeholder = "Enter here"
        txtField.backgroundColor = UIColor.gray
        self.view.addSubview(txtField)
    }
}


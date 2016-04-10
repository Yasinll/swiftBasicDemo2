//
//  ViewController.swift
//  02.KVC构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let p = Person(dic: ["name": "小明", "age": "18"])
        
        print(p.name)
        
        print(p.age)
        
        let s = Student(dic: ["name": "小红", "age": "17", "no": "1"])
        
        print("\(s.name),\(s.age),\(s.no)")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


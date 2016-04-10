//
//  ViewController.swift
//  04.懒加载
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // oc中懒加载重写了get方法，
    // swift中懒加载使用关键字 lazy
    // 在使用懒加载的是对其进行创建并把返回的值给定义的lazy属性
    
    
    // 简单的懒加载
    lazy var person1: Person = Person()
    
    
    
    // 可以使用闭包作为懒加载
    lazy var person2: Person = { // () -> Person in
        
        let p = Person()
        
        p.name = "张三"
        
        return p
        
    }()
    
    
    
    
    let closure = { () -> Person in
        
        let p = Person()
        
        p.name = "李四"
    
        return p
    
    }
    
    // 可以使用self，因为使用的懒加载
    lazy var person3: Person = self.closure()
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

      print("哈哈")
        
        
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        // 使用了懒加载
        print(person1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


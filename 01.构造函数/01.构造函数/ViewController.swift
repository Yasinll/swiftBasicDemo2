//
//  ViewController.swift
//  01.构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

// 在swift 里面  在当前工程里面类都是全局共享的  不用导入头文件
class ViewController: UIViewController {

    override func viewDidLoad() {
       
        super.viewDidLoad()
//        
//        let p = Person()
//        
//        print(p.name)
//        
//        print(p.age)
//        
//        print("-------")
//        
//        
//        let s = Student()
//        
//        print("\(s.name),\(s.age),\(s.no)")
        
        let p = Person(name: "李四", age: 18)
        
        print(p.name)
        
        print(p.age)
        
        
//        let p1 = Person(name: <#T##String#>, age: <#T##Int#>)
        
        let s = Student(name: "小明", age: 18, no: "1")
        
        let s1 = Student(name: "小红", age: 17, no: "2")
        
        print("\(s.no),\(s.name),\(s.age)")
        
        print("\(s1.no),\(s1.name),\(s1.age)")
    
        

    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


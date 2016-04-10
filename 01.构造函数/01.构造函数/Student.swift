//
//  Student.swift
//  01.构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class Student: Person {
    
    // 必选属性
    var no: String
    
    // 重写父类的构造函数，父类要提供这个方法
//    override init () {
//    
//        no = "001"
//        
//        super.init()
//    
//    }

    // 重写父类构造函数
//    override init(name: String, age: Int) {
//        
//        no = "002"
//        
//        super.init(name: name, age: age)
//    }
//    
//    
    
    // 重写构造函数
    init(name: String, age: Int, no: String) {
        
        self.no = no
        
        super.init(name: name, age: age)
        
    }
    
}

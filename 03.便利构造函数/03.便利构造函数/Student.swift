//
//  Student.swift
//  03.便利构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class Student: Person {
    
    var no: String?
    
    // 不能重写父类的便利构造函数
    // 便利构造函数是能self调用当前类中的构造函数
    convenience init?(no: String, name: String, age: Int) {
    
        // 调用父类里面的便利构造函数，但一个子类里面不能有其他构造函数
        self.init(name: name, age: age)
        
        self.no = no

    }

}

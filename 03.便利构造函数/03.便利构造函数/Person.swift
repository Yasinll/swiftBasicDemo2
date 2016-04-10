//
//  Person.swift
//  03.便利构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    
    var name: String?
    
    var age: Int = 0
    
    /*
        便利构造函数
            便利构造函数可以返回nil
            便利构造函数只能通过self 调用其他构造函数
            便利构造函数不能被重写，在便利构造函数里面不能使用super
            convenience 关键字是便利的意思，使用convenience修饰的构造函数是便利构造函数
            可以根据出入参数进行判断，是否可以创建一个对象，如果条件不满足直接return nil
    
            便利构造函数最终调用指定构造函数
    */

    // 根据年龄是否合法，判断是否创建对象
    convenience init?(name: String , age: Int) {
        
        if (age < 0 || age > 200) {
        
            return nil
        
        }
        
        self.init(dic:["name": name, "age": age])
        
    }
    
    
    
    init(dic: [String: NSObject]) {
        
        super.init()
        
        setValuesForKeysWithDictionary(dic)
        
    }
    
    
    
    override func setValue(value: AnyObject?, forKey key: String) {
        
        
        super.setValue(value, forKey: key)
        
        print("key = \(key), value = \(value)")
        
    }
    
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
        print("UndefineKey == \(key)")
    }
    
}
















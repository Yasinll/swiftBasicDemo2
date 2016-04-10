//
//  Person.swift
//  02.KVC构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class Person: NSObject {

    // KVC本质
    /**
        在运行时动态向'对象'发送 setValue: forKey
        
        setValue: forKey:
            判断key对应的属性是否存在，如果key不存在，调用setValue: forUndefineKey
            如果key存在，判断这个key对应的属性是否初始化
                如果对应属性已经初始化了，直接赋值
                如果对应属性没有初始化，先调用构造函数进行分配内存空间，再设置初始值
    
    */
    
    
    // 可选类型的属性可以不在构造函数里面初始化
    var name: String?
    
    // age在swift里面与KVC兼容
    
    /*
        因为kvc是oc特有的，在oc里面基本数据类型没哟可选类型，不能为nil
        所以， 基本数据类型不能使用可选类型，而且需要对其进行初始化
    */
    var age: Int = 0
    
    // KVC构造函数
    init(dic: [String: NSObject]) {
    
        // 调用super表示对象创建完成
        super.init()
        
        // 遍历
        setValuesForKeysWithDictionary(dic)
        
    }
    
    
    override func setValue(value: AnyObject?, forKey key: String) {
        
        print(key)
        
        super.setValue(value, forKey: key)
        
        
        // 如果程序启动很慢，内存暴涨，可能是递归调用
//        super.setValue(<#T##value: AnyObject?##AnyObject?#>, forKeyPath: <#T##String#>)
        
        print("key == \(key), value == \(value)")
        
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
        print("UndefineKey == \(key)")
        
    }
    
}

































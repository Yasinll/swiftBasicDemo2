//
//  Person.swift
//  04.懒加载
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class Person: NSObject {

    // 在swift中set/get的写法
    // 使用private关键字修饰的属性或者方法，只能在当前类使用，外界不能访问到
    // 开发富哦城中get/set方法使用的比较少
//    private var name: String?
    
//    var name: String? {
//    
//        get {
//        
//            return _name
//        
//        } set {
//        
//            // newValue,在属性name赋值的时候传入过来的新值
//            _name = newValue
//        
//        }
//     
//    }
    
    // 这种代码符合UITableViewCell上的数据模型，设置UITableViewCell上控件的数据
    // 存储属性
    var name: String? {
    
        // didSet  当外界设置完值以后，会直接调用
        didSet {
        
//            print(name)
        
        }
    
    }
    
    // oc里面的只读属性(read-only)在swift中也可以叫做计算属性
//    var title: String? {
//    
//        get {
//        
//            return "我叫" + (name ?? "")
//        
//        }
//    
//    }
    
    // 存储属性：能存值能取值，需要开辟内存空间，耗内存，直接通过内存去取值
    var age: Int = 0
    
    // 计算属性：可以省略 get，不能赋值，不需要开辟内存空间，耗CPU，每次都会调用get方法计算
//    var title: String? {
//    
//        return "我叫" + (name ?? "")
//    
//    }
    
    // 懒加载，闭包只会执行一次，开辟内存存储闭包返回值
    lazy var title: String? = {
    
        // 在闭包里面需要使用self指定上下文语句
        return "我叫" + (self.name ?? "")
   
    }()
    
    
//    var name: String?
//    
//    var age: Int = 0
    
}

//
//  Person.swift
//  01.构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

/**
    构造函数  最终目标是创建一个对象
        给属性开辟内存空间，给属性设置初始值
        在swift里面构造函数都是 init  有可能参数不同
 
 */


class Person: NSObject {
    
    
    // var
    // 必选属性  一定要有值
    var name: String
    
    var age: Int
    
    // 可选属性  默认==nil  可以不需要在构造函数里面进行初始化，属性没有分配内存空间，在其他地方设置值的时候才需要分配空间，符合移动开发延时创建的需要
    // override 是重写关键字，子类继承父类，需要对父类里面的方法进行扩展，就是重写
    // 调用super.init() 之前，保证子类初始化完成
//    override init() {
//        {
//        
//            name = "张三"
//            
//            age = 18
//            
//            super.init()
//        
//        }
//        
//    }

    
    // 重载构造函数
    /**
        重载
            函数名相同，参数名字或者参数个数不同，就叫做重载，不仅限于构造函数
    
    */

    // 如果当前类中提供了构造函数，则默认的构造函数没有了，因为默认的构造函数init，无法子类里面的属性进行初始化，因为子类有什么属性
    
    init(name: String, age: Int) {
        
        
        // 属性名字和传入的参数一样，需要使用self区分
        self.name = name
        
        self.age = age
        
        // 建议使用super.init()，执行代码逻辑清晰
        super.init()
        
    }
    
    
}



















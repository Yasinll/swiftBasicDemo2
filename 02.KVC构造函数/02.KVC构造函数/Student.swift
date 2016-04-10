//
//  Student.swift
//  02.KVC构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class Student: Person {
    
    
    // 可选类型，因为需要使用kvc赋值
    var no: String?
    
    override init(dic: [String : NSObject]) {
        
        super.init(dic: dic)
        
    }

    // 如果子类没有提供构造函数，则可以使用父类的构造函数
//    init(no: String) {
//    
//        self.no = no
//        
//        super.init(dic: ["name": "小明", "age": "18"])
//    
//    }
//    
    
}

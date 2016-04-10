//
//  Person.swift
//  08.项目演练
//
//  Created by 浅爱 on 16/3/8.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    
    var age: Int = 0
    
    
    // kvc
    init(dic: [String: NSObject]) {
        
        super.init()
        
        // 通过kvc初始化
        setValuesForKeysWithDictionary(dic)
        
    }
    
    // 防止key没有值
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
        
    }

}

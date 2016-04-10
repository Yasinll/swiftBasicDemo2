//
//  ViewController.swift
//  03.便利构造函数
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let s = Student(no: "002", name: "王五", age: 20)
        
        // ? 判断前者的这个可选类型的对象是否为nil，如果为nil，则后面的代码不执行，直接返回nil， 如果不为nil 则返回后面代码的结果
        print("\(s?.name),\(s?.age),\(s?.no)")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


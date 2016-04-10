//
//  ViewController.swift
//  06.闭包的循环引用
//
//  Created by 浅爱 on 16/3/8.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var closure: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let closure = {
//        
//            print("哈哈")
//        
//        }
//        
//        closure()
        
        /*
            ViewController 强引用了 closure 闭包
            closure闭包 强引用了 self(ViewController)
        */
        
        // 如何解决
        // 仿照OC
        // 对象销毁后，weakSelf 指向的地址为nil
        // weak var weakSelf = self
        // weak 对象销毁后 weakSelf 指向的地址为nil  __weak
        // unowned 相当于 oc中__unsafe_unretain，对象销毁后，指向的地址不变，地址对应的对象已经销毁，再使用会崩溃
        closure = { [unowned self] in
            
            print("哈哈")
            
            dispatch_async(dispatch_get_global_queue(0, 0), { () -> Void in
                
                NSThread.sleepForTimeInterval(1)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    // 在闭包里需要使用self指定上下文语境
                    // viewController引用计数是2
                    print(self.view)
                    
                })
                
            })
        
            print(self.view)
            
        }
        
        // ViewController 引用计数是1
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        // ? 判断闭包是否为nil，好比在oc中判断block 是否为 nil
        closure?()
        
    }
    
    
    // 在swift  析构函数
    deinit {
    
        // 释放资源
        // 通知
        // kvo
        // NSTimer
        print("ViewController over")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


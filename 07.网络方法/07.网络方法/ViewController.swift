//
//  ViewController.swift
//  07.网络方法
//
//  Created by 浅爱 on 16/3/8.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {

        super.viewDidLoad()
        
        loadData()

    }

    func loadData() {
    
        let url = NSURL(string: "http://www.baidu.com")
    
        // url 可能为nil
        guard let  u = url else {
        
            print("url 为 nil")
            
            return
        
        }
        
        // 这里u 一定有值
        let request = NSURLRequest(URL: u)
        
        NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, _, _) -> Void in
            
            // data是可选类型 可能为nil
            guard let d = data else {
            
                print("数据为空")
                
                return
            
            }
            
            // 放心使用 d []代表0
            
            // try
            let result = try? NSJSONSerialization.JSONObjectWithData(d, options: [])
            
            print(result)
            
            // try 如果数据没哟反序列化成功会执行 catch，成功直接返回
//            do {
//            
//                let result = try NSJSONSerialization.JSONObjectWithData(d, options: [])
//                
//                print(result)
//                
//            } catch {
//            
//                print(error)
//            
//            }
            
        }.resume()
    
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


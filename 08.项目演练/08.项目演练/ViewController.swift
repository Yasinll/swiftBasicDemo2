//
//  ViewController.swift
//  08.项目演练
//
//  Created by 浅爱 on 16/3/8.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    // 定义可选属性，在需要的时候对其进行赋值，分配空间，并初始化
    var persons: [Person]?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let callBack = { (result: [Person]) in
        
            // 数据回调，保存数据，用于更新UI
            // 使用self指定上下文语句
            self.persons = result
            
            // 更新数据
            self.tableView.reloadData()
        
        }
        
        // 加载数据
        loadData(callBack)
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // 这是使用as？，模拟有可能出现点击以后去不同的viewController
//        guard let d = destinationViewController else {
//        
//            return
//        
//        }

        guard let destinationViewController = segue.destinationViewController as? DetailViewController else {
            
            print("不关心的")
            
            return
            
        }
        
        
        guard let indexPath = tableView.indexPathForSelectedRow else {
        
            print("没有选中cell")
            
            return
        
        }
        
        // 为什么能使用！因为tableView数据显示出来才能点击
        destinationViewController.person = persons![indexPath.row]
        
        destinationViewController.callBack = {
        
            self.tableView.reloadData()
        
        }
        
    }

}

// 加载数据使用
extension ViewController {

    // 加载网络数据
    func loadData(callBack: (result: [Person]) -> ()) {
    
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            
            NSThread .sleepForTimeInterval(1)
            
            // 准备数据，
            // 定义一个临时数组
            var tepArray = [Person]()
            
            for i in 0 ..< 30 {
            
                let name = "李四\(i)"

                // 产生随机数
                // arc4random()没有智能提示
                // random()
                // random 性能比arc4random 高
                // random 每次启动产生的随机数都一样
                let age = 15 + (random() % 16)
                
                let p = Person(dic: ["name": name, "age": age])
            
                // 添加数据
                tepArray.append(p)
            
            }
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                // 更新UI 
                callBack(result: tepArray)
                
            })
            
        }

    }

}


extension ViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // 不能强制解包，因为数据还没有加载出来，persons默认是nil
        return persons?.count ?? 0
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // as? 如果转换不成功 就不是需要的PersonTableViewCell
        let cell = tableView.dequeueReusableCellWithIdentifier("homeCell", forIndexPath: indexPath) as! PersonTableViewCell
        
        cell.person = persons![indexPath.row]
        
        return cell
    
    }

}





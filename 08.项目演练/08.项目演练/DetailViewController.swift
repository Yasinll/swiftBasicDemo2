//
//  DetailViewController.swift
//  08.项目演练
//
//  Created by 浅爱 on 16/3/8.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    var callBack: (() -> ())?
    
    var person: Person? {
    
        didSet {
        
            // 因为view还没哟初始化成功，验证：通过使用view判断是否调用loadView(),如果调用了说明view
            
            print(view)
            
            tf_userName.text = person?.name
            
            tf_userAge.text = "\(person?.age ?? 0)"
        
        }
    
    }
    
    override func loadView() {
        
        super.loadView()
        
    }
    
    // 名字
    @IBOutlet weak var tf_userName: UITextField!
    
    // 年龄
    @IBOutlet weak var tf_userAge: UITextField!
    

    override func viewDidLoad() {
    
        super.viewDidLoad()

        tf_userName.text = person?.name
        
        tf_userAge.text = "\(person?.age ?? 0)"
        
        
        let url = NSURL(string: "")
        
        let request = NSURLRequest(URL: NSURL(string: "http://www.baidu.com")!)

        
        
    }
    
    
    // 文本框内容变化会调用
    @IBAction func textChange(sender: AnyObject) {
        
        // 如果两个文本框的内容都有值才能点击
//        if tf_userName.hasText() && tf_userAge .hasText() {
//        
//            navigationItem.rightBarButtonItem?.enabled = true
//        
//        }else {
//        
//            navigationItem.rightBarButtonItem?.enabled = false
//        
//        }

        navigationItem.rightBarButtonItem?.enabled = tf_userName.hasText() && tf_userAge.hasText()
        
    }

 
    // 保存按钮
    @IBAction func saveBtnClick(sender: AnyObject) {
     
        // 设置数据
        person?.name = tf_userName.text
        
        // 可以强制解包 因为name和age有值才能被点击
        // 因为键盘类型只能输入数字
        person?.age = Int(tf_userAge.text!) ?? 0
        
        // 通知viewController 刷新界面
        // 使用 ? 判断出入的闭包是否为nil，如果为nil就不执行闭包
        
        callBack?()
        
        // pop返回
        navigationController?.popViewControllerAnimated(true)
        
    }

}









//
//  PersonTableViewCell.swift
//  08.项目演练
//
//  Created by 浅爱 on 16/3/8.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {


    // 定义一个可选类型的person
    var person: Person? {
    
        didSet {
        
            lb_userName.text = person?.name
            
            // ??使用空合并运算符，对person?.age 可选类型的进行判断，如果person为nil，则使用0  否则直接使用age
            lb_userAge.text = "\(person?.age ?? 0)"
            
        }
    
    }
    
    
    @IBOutlet weak var lb_userName: UILabel!
    
    @IBOutlet weak var lb_userAge: UILabel!


}

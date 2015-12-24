//
//  baseClass.swift
//  protocolDemo
//
//  Created by 章宇 on 15/12/23.
//  Copyright © 2015年 章宇. All rights reserved.
//

import Foundation
//工具类,放置一些经常用到的方法
//通过userDefault存储数据
class baseClass{
    
    func cacheSetString(key: String,value: String){
        let userInfo = NSUserDefaults()
        userInfo.setValue(value, forKey: key)
    }
    
    func cacheGetString(key: String) -> String{
        let userInfo = NSUserDefaults()
        let tmpSign = userInfo.stringForKey(key)
        return tmpSign!
    }
}
//
//  btn1.swift
//  protocolDemo
//
//  Created by 章宇 on 15/12/23.
//  Copyright © 2015年 章宇. All rights reserved.
//

import UIKit

class btn1: UIViewController {

    @IBOutlet weak var text1: UITextField!

    
    // 这边需要定义一个变量
    var tmpString: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //输出传递过来的值
        text1.text = self.tmpString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

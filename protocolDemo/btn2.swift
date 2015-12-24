//
//  btn2.swift
//  protocolDemo
//
//  Created by 章宇 on 15/12/23.
//  Copyright © 2015年 章宇. All rights reserved.
//

import UIKit

class btn2: UIViewController,ParamsProtocol {

    // 该类需要遵守协议
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var test: UILabel!
    var obj = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        obj.paramsProtocolDelegate = self
        obj.start()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //遵守协议必须重新实现以下协议中的方法
    func returnParams(tmpStr: String) {
        self.text2.text = tmpStr
        self.test.text = tmpStr
    }
}

//
//  btn3.swift
//  protocolDemo
//
//  Created by 章宇 on 15/12/23.
//  Copyright © 2015年 章宇. All rights reserved.
//

import UIKit

class btn3: UIViewController {

    @IBOutlet weak var text3: UITextField!
    
    var base: baseClass = baseClass()
    var sign:String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sign = base.cacheGetString("sign")
       text3.text = self.sign
        // Do any additional setup after loading the view.
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

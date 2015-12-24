//
//  ViewController.swift
//  protocolDemo
//
//  Created by 章宇 on 15/12/23.
//  Copyright © 2015年 章宇. All rights reserved.
//

import UIKit
import Foundation

protocol ParamsProtocol{

    func returnParams(tmpStr: String)
}

class ViewController: UIViewController {
    
    var tmpString: String = String()
    //NSUserDefaults传值
    var base: baseClass = baseClass()
    //值传递2
    var paramsProtocolDelegate: ParamsProtocol?

    @IBOutlet weak var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //通过segue进行传值
    @IBAction func btn1Click(sender: AnyObject) {
        self.tmpString = "通过segue进行的值传递方式1"
        self.performSegueWithIdentifier("btn1", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "btn1"{
        
            let obj = segue.destinationViewController as! btn1
            obj.tmpString = self.tmpString
        }
    }
    //定义一个方法给协议中的方法赋值
    //在viewcontroller中实现方法，这样在btn1，btn2中酒可以不用实现，帮他两个实现了，这就是代理
    func start(){
    
        self.tmpString = "通过delegate进行的值传递方式2"
        self.paramsProtocolDelegate?.returnParams(self.tmpString)
    }
    
    @IBAction func btn2Click(sender: AnyObject) {
        //点击跳转
        self.performSegueWithIdentifier("btn2", sender: self)
        
    }
    
    
    @IBAction func btn3Click(sender: AnyObject) {
        self.base.cacheSetString("sign", value: "通过NSUserdefaults传递方式3")
        self.performSegueWithIdentifier("btn3", sender: self)
    }
    
    //返回按钮
    @IBAction func close(segue: UIStoryboardSegue){
        if segue.identifier == "btn1" {
            let obj = segue.destinationViewController as! ViewController
            let obj2 = segue.sourceViewController as! btn1
            obj.output.text = obj2.text1.text;
            
        }else  if segue.identifier == "btn2" {
            let obj = segue.destinationViewController as! ViewController
            let obj2 = segue.sourceViewController as! btn2
            obj.output.text = obj2.text2.text;
            
        }
        else  if segue.identifier == "btn3" {
            let obj = segue.destinationViewController as! ViewController
            let obj2 = segue.sourceViewController as! btn3
            obj.output.text = obj2.text3.text;
        }
    }

}


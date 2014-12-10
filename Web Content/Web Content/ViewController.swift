//
//  ViewController.swift
//  Web Content
//
//  Created by Talha Qamar on 12/10/14.
//  Copyright (c) 2014 Talha Qamar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var o: UILabel!
    var str = NSString()
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        //println("working")
        
        var url = NSURL(string: "http://stackoverflow.com")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!)
        {
            (data,response,error) in
      //  println(NSString(data: data, encoding: NSUTF8StringEncoding))
       self.str = NSString(data: data, encoding: NSUTF8StringEncoding)!
            println(self.str)
            self.o.text = ""
            self.o.text = NSString(data: data, encoding: NSUTF8StringEncoding)
      
                  }
        
        task.resume()
        }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


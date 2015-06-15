//
//  ViewController.swift
//  srvup
//
//  Created by Justin Mitchel on 6/14/15.
//  Copyright (c) 2015 Coding for Entrepreneurs. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import KeychainAccess

class ViewController: UIViewController {
    let authTokenUrl = "http://127.0.0.1:8000/api/auth/token/"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let params = ["username": "jmitchel3", "password": 123]
        var rTest = Alamofire.request(Method.POST, self.authTokenUrl, parameters: params)
        
        rTest.responseJSON(options: nil, completionHandler: isComplete)
    }
    
    func isComplete(request:NSURLRequest, response:NSHTTPURLResponse?, data:AnyObject?, error:NSError?) -> Void {
        println(response!.statusCode)
        println(data)
        // println(error)
        // println(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

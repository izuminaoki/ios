//
//  BaseNavigationController.swift
//  multi_storyboard
//
//  Created by jack on 9/27/16.
//  Copyright © 2016 jack. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    
    var presentViewController:[UIViewController] = []
    var presentIndex = 0
    
    
//    var presentViewController:[UIViewController]{
//        get {
//            return presentViewControllers
//        }
//        set(p) {
//            presentViewControllers = p
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

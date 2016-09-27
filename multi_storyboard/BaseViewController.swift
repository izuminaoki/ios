//
//  BaseViewController.swift
//  multi_storyboard
//
//  Created by jack on 9/27/16.
//  Copyright © 2016 jack. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, BaseViewControllerProtocol {
    
    func goNextScreen() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe(_:)))
        swipeLeftGesture.direction = .Left

        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe(_:)))
        swipeRightGesture.direction = .Right
        
        view.addGestureRecognizer(swipeLeftGesture)
        view.addGestureRecognizer(swipeRightGesture)
        
        
        let nc = self.navigationController as? BaseNavigationController
        
        nc!.presentViewController.removeAll()
        nc!.presentViewController.append(self)
        nc!.presentIndex = 0

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    final func didSwipe(sender: UISwipeGestureRecognizer) {
    
        if sender.direction == .Left
        {
            print("swipe Left!")
            
            let nc = self.navigationController as? BaseNavigationController
            
//            var pvc = nc!.presentViewController
            
            if nc!.presentViewController.count > 0 {
                
//                let lastIndex = nc!.presentViewController.count-1
                
                if !(nc!.presentViewController[nc!.presentIndex] === self) {
                
                    self.navigationController?.pushViewController(nc!.presentViewController[nc!.presentIndex], animated: true)
                    
                    nc!.presentViewController.removeAtIndex(nc!.presentIndex)
                    nc!.presentIndex -= 1
                
                }
                
            }

            
            
        }
        
        if sender.direction == .Right
        {
            print("swipe Right!")
            
            let nc = self.navigationController as? BaseNavigationController
            
            if nc!.presentViewController.count == 0 {
                
                nc!.presentViewController.append(self)
                nc!.presentIndex += 1
                
            } else {
                
                if !(nc!.presentViewController[nc!.presentIndex] === self) {
                    
                    nc!.presentViewController.append(self)
                    nc!.presentIndex += 1
                    
                }
            }

            self.navigationController?.popViewControllerAnimated(true)

        }
        
        print((self.navigationController as? BaseNavigationController)!.presentIndex)
    }
}

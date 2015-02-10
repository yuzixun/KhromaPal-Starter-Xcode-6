//
//  UIViewControllerShow.swift
//  KhromaPal
//
//  Created by yuzixun on 15/2/6.
//  Copyright (c) 2015年 RayWenderlich. All rights reserved.
//

import Foundation

extension UIViewController {
    func rwt_showVCWillResultInPush(sender: AnyObject?) -> Bool {
        if let target = targetViewControllerForAction("rwt_showVCWillResultInPush:", sender: sender){
            return target.rwt_showVCWillResultInPush(sender)
        } else {
            return false
        }
    }
    
    func rwt_showDetailVCWillResultInPush(sender: AnyObject?) -> Bool {
        if let target = targetViewControllerForAction("rwt_showDetailVCWillResultInPush:", sender: sender) {
            return target.rwt_showDetailVCWillResultInPush(sender)
        } else {
            return false
        }
    }
}
extension UINavigationController {
    override func rwt_showVCWillResultInPush(sender: AnyObject?) -> Bool {
        return true
    }
}

extension UISplitViewController {
    override func rwt_showDetailVCWillResultInPush(sender: AnyObject?) -> Bool {
        if collapsed {
            if let primaryVC = viewControllers.last as? UIViewController {
                return primaryVC.rwt_showVCWillResultInPush(sender)
            }
            return false
        } else {
            return false
        }
    }
}
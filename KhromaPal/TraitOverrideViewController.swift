//
//  TraitOverrideViewController.swift
//  KhromaPal
//
//  Created by yuzixun on 15/2/6.
//  Copyright (c) 2015年 RayWenderlich. All rights reserved.
//

import UIKit

class TraitOverrideViewController: UIViewController {

    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        var traitOverride:UITraitCollection? = nil
        if size.width > 414 {
            traitOverride = UITraitCollection(horizontalSizeClass: .Regular)
        }
        setOverrideTraitCollection(traitOverride, forChildViewController: childViewControllers[0] as UIViewController)
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
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

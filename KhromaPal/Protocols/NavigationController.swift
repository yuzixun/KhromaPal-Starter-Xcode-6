//
//  NavigationController.swift
//  KhromaPal
//
//  Created by yuzixun on 15/2/6.
//  Copyright (c) 2015年 RayWenderlich. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController,
                            PaletteDisplayContainer,
                            PaletteSelectionContainer{

    func rwt_currentlyDisplayedPalette() -> ColorPalette? {
        if let tvc = topViewController as? PaletteDisplayContainer {
            return tvc.rwt_currentlyDisplayedPalette()
        }
        return nil
    }
    
    func rwt_currentlySelectedPalette() -> ColorPalette? {
        if let tvc = topViewController as? PaletteSelectionContainer {
            return tvc.rwt_currentlySelectedPalette()
        }
        return nil
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

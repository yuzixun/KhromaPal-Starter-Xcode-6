//
//  SplitViewController.swift
//  KhromaPal
//
//  Created by yuzixun on 15/2/6.
//  Copyright (c) 2015年 RayWenderlich. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController,UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        delegate = self
    }

    func splitViewController(SplitViewController: UISplitViewController,
        collapseSecondaryViewController secondaryViewController:UIViewController,
        ontoPrimaryViewController primaryViewController: UIViewController) -> Bool{
            if let selectionCont = primaryViewController as? PaletteSelectionContainer{
                if let displatCont = secondaryViewController as? PaletteDisplayContainer {
                    let selectedPalette = selectionCont.rwt_currentlySelectedPalette()
                    let displayedPalette = displatCont.rwt_currentlyDisplayedPalette()
                    if selectedPalette? != nil &&
                        selectedPalette == displayedPalette {
                            return false
                    }
                }
            }
            return true
    }
    
    func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController!) -> UIViewController? {
        if let paletteDisplayCont = primaryViewController as? PaletteDisplayContainer {
            if paletteDisplayCont.rwt_currentlyDisplayedPalette() != nil{
                return nil
            }
        }
        let vc = storyboard?.instantiateViewControllerWithIdentifier("NoPaletteSelected") as UIViewController
        return NavigationController(rootViewController:vc)
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

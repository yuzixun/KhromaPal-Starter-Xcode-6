//
//  PaletteContainer.swift
//  KhromaPal
//
//  Created by yuzixun on 15/2/6.
//  Copyright (c) 2015年 RayWenderlich. All rights reserved.
//

import Foundation

@objc protocol PaletteDisplayContainer {
    func rwt_currentlyDisplayedPalette() -> ColorPalette?
}
@objc protocol PaletteSelectionContainer {
    func rwt_currentlySelectedPalette() -> ColorPalette?
}
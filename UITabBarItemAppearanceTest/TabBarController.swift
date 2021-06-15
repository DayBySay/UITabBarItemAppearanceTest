//
//  TabBarController.swift
//  UITabBarItemAppearanceTest
//
//  Created by takayuki.sei on 2021/06/15.
//

import UIKit

class TabBarController: UITabBarController {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        let appearance = self.tabBar.standardAppearance.copy()
        for layoutAppearance in [
            appearance.stackedLayoutAppearance,
            appearance.compactInlineLayoutAppearance,
            appearance.inlineLayoutAppearance
            ] {
            layoutAppearance.selected.iconColor = UIColor.red
            
            var nAttributes = layoutAppearance.selected.titleTextAttributes
            nAttributes[.foregroundColor] = UIColor.blue
            nAttributes[.kern] = 10
            layoutAppearance.normal.titleTextAttributes = nAttributes
            
            var sAttributes = layoutAppearance.selected.titleTextAttributes
            sAttributes[.foregroundColor] = UIColor.green
            sAttributes[.kern] = 10
            layoutAppearance.selected.titleTextAttributes = sAttributes
        }
        tabBar.standardAppearance = appearance
    }
}

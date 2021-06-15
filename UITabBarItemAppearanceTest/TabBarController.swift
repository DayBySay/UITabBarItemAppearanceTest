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
//        updateAppearances() // ここで実行してもレイアウトに反映されない
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateAppearances() // ここで実行してもレイアウトに反映されない
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        updateAppearances() // ここで実行してもレイアウトに反映されない
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        updateAppearances() // ここで実行してもレイアウトに反映されない
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        updateAppearances() // ここで実行してもレイアウトに反映されない
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        updateAppearances() // ここで実行すると再描画が発生するためタブ切り替え前にレイアウトを適用できる
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.updateAppearances()
//        }
    }
    
    func updateAppearances() {
//        tabBar.standardAppearance = tabBar.standardAppearance // この処理を実行するだけでタブのレイアウトが変更される、辛い

        let appearance = self.tabBar.standardAppearance.copy()
        for layoutAppearance in [
            appearance.stackedLayoutAppearance,
            appearance.compactInlineLayoutAppearance,
            appearance.inlineLayoutAppearance
            ] {
            layoutAppearance.selected.iconColor = UIColor.red
            var nAttributes = layoutAppearance.selected.titleTextAttributes
            nAttributes[.paragraphStyle] = NSParagraphStyle.default
            nAttributes[.foregroundColor] = UIColor.blue
//            nAttributes[.kern] = 10
            layoutAppearance.normal.titleTextAttributes = nAttributes
//
            var sAttributes = layoutAppearance.selected.titleTextAttributes
            sAttributes[.paragraphStyle] = NSParagraphStyle.default
            sAttributes[.foregroundColor] = UIColor.green
//            sAttributes[.kern] = 10
            layoutAppearance.selected.titleTextAttributes = sAttributes
        }
        tabBar.standardAppearance = appearance
    }
}

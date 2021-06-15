//
//  FirstViewController.swift
//  UITabBarItemAppearanceTest
//
//  Created by takayuki.sei on 2021/06/16.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapUpdateAppearanceButton(_ sender: Any) {
        if let tab = self.tabBarController as? TabBarController {
            tab.updateAppearances()
        }
    }
}

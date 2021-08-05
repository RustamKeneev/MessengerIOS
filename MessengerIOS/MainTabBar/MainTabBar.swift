//
//  MainTabBar.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/1/21.
//

import Foundation
import UIKit

class MainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        makeTransparentTabbar()

        
        let home = templateNavigationController(image: #imageLiteral(resourceName: "shape"), rootViewController: HomeViewController())
        let people = templateNavigationController(image: #imageLiteral(resourceName: "people"), rootViewController: PeopleViewController())
        let discover = templateNavigationController(image: #imageLiteral(resourceName: "discover"), rootViewController: DiscoverViewController())
        
        
        let controller = [home, people, discover]
        viewControllers = controller
    }
    
     //MARK: - makeTransparentTabbar
    func makeTransparentTabbar() {
            let layer = CAShapeLayer()
            layer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: tabBar.bounds.minY,
                                                          width: tabBar.bounds.width,
                                                          height: tabBar.bounds.height + 40),
                                                          cornerRadius: 0).cgPath
            layer.shadowColor = UIColor.lightGray.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 6)
            layer.shadowRadius = 3
            layer.shadowOpacity = 0.7
            layer.borderWidth = 1.0
            layer.opacity = 1.0
            layer.isHidden = false
            layer.masksToBounds = false
            layer.fillColor = UIColor.myGreyColor.cgColor
            tabBar.layer.insertSublayer(layer, at: 0)
            tabBar.itemWidth = 55.0
            tabBar.itemPositioning = .centered
            UITabBar.setTransparentTabbar()
        }

    //MARK: - function template navigation controller
    func templateNavigationController(image: UIImage,  rootViewController:UIViewController) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: rootViewController)
        navigation.tabBarItem.image = image
//        navigation.tabBarItem.title = text
        return navigation
    }
}

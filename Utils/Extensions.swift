//
//  Extensions.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/1/21.
//

import Foundation
import UIKit
import SnapKit

extension UIView {
    var safeArea: ConstraintBasicAttributesDSL {
            if #available(iOS 11.0, *) {
                return self.safeAreaLayoutGuide.snp
            } else {
                return self.snp
            }
        }
        
        var safeAreaEdgesInset: UIEdgeInsets {
            if #available(iOS 11.0, *) {
                return self.safeAreaInsets
            } else {
                return UIEdgeInsets()
            }
        }
}

extension UITabBar {
    
    static func setTransparentTabbar() {
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().clipsToBounds = true
    }
}

extension UIColor {
    convenience init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
    static let statusColor = UIColor.init(hex: "#02C697")
    static let lightGreyColor = UIColor.init(hex: "#E5E5E5")
    static let GreyColorCCCCCC = UIColor.init(hex: "#CCCCCC")
    static let myGreyColor = UIColor.init(hex: "#f2f2f2")

}

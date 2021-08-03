//
//  FriendStory.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/2/21.
//

import Foundation
import UIKit



class FriendStory {
    var image: UIImage
    var whiteView: UIColor
    var statusView: UIColor
    var text : String
    var textColor: UIColor
    
    init(image: UIImage, whiteView: UIColor, statusView: UIColor, text: String, textColor: UIColor) {
        self.image = image
        self.whiteView = whiteView
        self.statusView = statusView
        self.text = text
        self.textColor = textColor
    }
}

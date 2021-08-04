//
//  HomeChats.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/4/21.
//

import Foundation
import UIKit

class HomeChats {
    var image: UIImage
    var fullName: String
    var stringText: String
    var chatsText: String
    var time: String
    var roundedImage: UIImage
    
    
    init(image: UIImage, fullName: String, stringText: String, chatsText: String, time: String, roundedImage: UIImage) {
        self.image = image
        self.fullName = fullName
        self.stringText = stringText
        self.chatsText = chatsText
        self.time = time
        self.roundedImage = roundedImage
    }
}

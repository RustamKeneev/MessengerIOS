//
//  HomeChatsCell.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/4/21.
//

import Foundation
import SnapKit
import UIKit

class HomeChatsCell: UITableViewCell {
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAddSubView()
        setupMakeContraints()
    }
    
 
    
    func setupAddSubView() {
        
    }
    
    func setupMakeContraints() {
        
    }
    
    func setupData(homeChats: HomeChats ) {

//        backColor.backgroundColor = drugCategory.color
//        deviceImage.image = deviceCatalog.imageLogo
//        deviceLabel.text = deviceCatalog.textOne

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

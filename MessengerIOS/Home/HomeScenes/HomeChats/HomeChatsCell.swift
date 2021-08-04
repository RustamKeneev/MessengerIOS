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
    
    private lazy var chatsProfileImage: UIImageView = {
        let view = UIImageView()
        
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAddSubView()
        setupMakeContraints()
    }
    
 
    
    func setupAddSubView() {
        contentView.addSubview(chatsProfileImage)
    }
    
    func setupMakeContraints() {
        chatsProfileImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.height.width.equalTo(60)
        }
    }
    
    func setupData(homeChats: HomeChats ) {
        chatsProfileImage.image = homeChats.image
//        backColor.backgroundColor = drugCategory.color
//        deviceImage.image = deviceCatalog.imageLogo
//        deviceLabel.text = deviceCatalog.textOne

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

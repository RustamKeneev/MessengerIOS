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
    
    private lazy var chatFullNameLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return view
    }()
    
    private lazy var yourTextLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.textColor = .lightGray
        return view
    }()
    
    private lazy var chatsTextLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.textColor = .lightGray
        return view
    }()
    
    private lazy var chatsTime: UILabel = {
        let view = UILabel()
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return view
    }()
    
    private lazy var readImage: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 8
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAddSubView()
        setupMakeContraints()
    }
    
 
    
    func setupAddSubView() {
        contentView.addSubview(chatsProfileImage)
        contentView.addSubview(chatFullNameLabel)
        contentView.addSubview(yourTextLabel)
        contentView.addSubview(chatsTextLabel)
        contentView.addSubview(chatsTime)
        contentView.addSubview(readImage)
    }
    
    func setupMakeContraints() {
        chatsProfileImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(8)
            make.leading.equalToSuperview()
            make.height.width.equalTo(60)
        }
        
        chatFullNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(chatsProfileImage.snp.top).offset(8)
            make.left.equalTo(chatsProfileImage.snp.right).offset(12)
        }
        
        yourTextLabel.snp.makeConstraints { (make) in
            make.top.equalTo(chatFullNameLabel.snp.bottom)
            make.bottom.equalTo(chatsProfileImage.snp.bottom).offset(-8)
            make.left.equalTo(chatFullNameLabel.snp.left)
        }
        
        chatsTextLabel.snp.makeConstraints { (make) in
            make.top.equalTo(yourTextLabel.snp.top)
            make.left.equalTo(yourTextLabel.snp.right).offset(8)
            make.bottom.equalTo(yourTextLabel.snp.bottom)
        }
        
        chatsTime.snp.makeConstraints { (make) in
            make.top.equalTo(chatsTextLabel.snp.top)
            make.bottom.equalTo(chatsTextLabel.snp.bottom)
            make.left.equalTo(chatsTextLabel.snp.right).offset(8)
        }
        
        readImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(30)
//            make.bottom.equalTo(chatsTime.snp.bottom)
            make.right.equalToSuperview().offset(-8)
            make.height.width.equalTo(16)
        }
    }
    
    func setupData(homeChats: HomeChats ) {
        chatsProfileImage.image = homeChats.image
        chatFullNameLabel.text = homeChats.fullName
        yourTextLabel.text = homeChats.stringText
        chatsTextLabel.text = homeChats.chatsText
        chatsTime.text = homeChats.time
        readImage.image = homeChats.roundedImage
//        backColor.backgroundColor = drugCategory.color
//        deviceImage.image = deviceCatalog.imageLogo
//        deviceLabel.text = deviceCatalog.textOne

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

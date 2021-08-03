//
//  FriendsStoryCell.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/1/21.
//

import UIKit
import SnapKit
import Kingfisher

class FriendsStoryCell: UICollectionViewCell {
    
    static let reuseIdentifierCell = "FriendsStoryCellReuse"

    
    private lazy var friendStoryUIVIew: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.layer.cornerRadius = 26
        return view
    }()
    
    private lazy var friendStoryImage: UIImageView = {
        let view = UIImageView()
    
        return view
    }()
    
    private lazy var statusUIView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.layer.cornerRadius = 7
        return view
    }()
    
    
    private lazy var whiteRound: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        view.addSubview(statusUIView)
        statusUIView.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(2)
            make.leading.trailing.equalToSuperview().inset(2)
            make.height.width.equalTo(14)
        }
        return view
    }()
    
    private lazy var friendsStoryLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        view.textColor = .gray
        return view
    }()
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configure()

    }
    
    func configure() {
        addSubViews()
        addConstraints()
    }
    
    func addSubViews() {
        contentView.addSubview(friendStoryUIVIew)
        contentView.addSubview(friendStoryImage)
        contentView.addSubview(whiteRound)
        contentView.addSubview(friendsStoryLabel)
    }
    
    
    func addConstraints() {
        friendStoryUIVIew.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.width.equalTo(52)
        }
        
        friendStoryImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
        
        whiteRound.snp.makeConstraints { (make) in
            make.bottom.equalTo(friendStoryUIVIew).offset(-2)
            make.right.equalTo(friendStoryUIVIew.snp.right).offset(-4)
            make.height.width.equalTo(16)
        }
        
        friendsStoryLabel.snp.makeConstraints { (make) in
            make.top.equalTo(friendStoryImage.snp.bottom).offset(6)
            make.left.equalTo(friendStoryImage)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupData(data: FriendStory) {
        friendStoryImage.image = data.image
//        whiteRound.backgroundColor = data.whiteView
        friendsStoryLabel.text = data.text
    }
}

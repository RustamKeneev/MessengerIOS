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
    
    private lazy var FriendStoryUIVIew: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
//    private lazy var itemTitle: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
//        label.textColor = .white
//        label.numberOfLines = 0
//        return label
//    }()
//
//    private lazy var itemImage: UIImageView = {
//        let imageView = UIImageView()
//        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
//        return imageView
//    }()
//
//    private lazy var blackView: UIView = {
//       let view = UIView()
//        view.backgroundColor = .init(hex: "99000000")
//        return view
//    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configure()
//        contentView.addSubview(FriendStoryUIVIew)
//        contentView.addSubview(blackView)
//        contentView.addSubview(itemTitle)
        
//        blackView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
//
//        itemImage.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
//
//        itemTitle.snp.makeConstraints { make in
//            make.bottom.equalTo(itemImage.snp.bottom)
//            make.leading.trailing.equalToSuperview().inset(20)
//            make.height.equalTo(150)
//        }
    }
    
    func configure() {
        addSubViews()
        addConstraints()
    }
    
    func addSubViews() {
        
    }
    
    func addConstraints() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupData(data: FriendStory) {
//        itemImage.kf.setImage(with: URL(string: data.urlToImage ?? ""))
//        itemTitle.text = data.title

    }
}

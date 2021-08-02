//
//  HomeViewController.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/1/21.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    private lazy var profileTabBarImage: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "profileImage")
        view.layer.cornerRadius = 20
        view.backgroundColor = .black
        return view
    }()
    
    private lazy var chatsNavBarLabel: UILabel = {
        let view = UILabel()
        view.text = "Chats"
        view.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return view
    }()
    
    private lazy var takePhotoImage: UIImageView = {
        let view  = UIImageView()
        view.image = #imageLiteral(resourceName: "takePhoto")
        return view
    }()
    
    private lazy var takePhotoUIView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.myGreyColor
        view.layer.cornerRadius = 20
        view.addSubview(takePhotoImage)
        takePhotoImage.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(20)
            make.height.equalTo(18)
        }
        return view
    }()
    
    private lazy var changeImage: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "insert")
        return view
    }()
    
    private lazy var changeUIView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.myGreyColor
        view.layer.cornerRadius = 20
        view.addSubview(changeImage)
        changeImage.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.width.equalTo(20)
        }
        return view
    }()
    
    private lazy var navView: UIView = {
       let view = UIView()
        view.addSubview(profileTabBarImage)
        view.addSubview(chatsNavBarLabel)
        view.addSubview(takePhotoUIView)
        view.addSubview(changeUIView)
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor.clear
        profileTabBarImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(8)
            make.left.equalToSuperview().offset(16)
            make.height.width.equalTo(40)
        }
        
        chatsNavBarLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileTabBarImage.snp.top)
            make.bottom.equalTo(profileTabBarImage.snp.bottom)
            make.left.equalTo(profileTabBarImage.snp.right).offset(12)
        }
        
        takePhotoUIView.snp.makeConstraints { (make) in
            make.top.equalTo(profileTabBarImage.snp.top)
            make.bottom.equalTo(profileTabBarImage.snp.bottom)
            make.right.equalTo(changeUIView.snp.left).offset(-12)
            make.height.width.equalTo(40)
        }
        
        changeUIView.snp.makeConstraints { (make) in
            make.top.equalTo(takePhotoUIView.snp.top)
            make.bottom.equalTo(takePhotoUIView.snp.bottom)
            make.right.equalToSuperview().offset(-16)
            make.left.equalTo(takePhotoUIView.snp.right)
            make.height.width.equalTo(40)
        }
        
        return view
    }()
    
    private lazy var searchTextField: UITextField = {
        let view = UITextField()
        view.backgroundColor = UIColor.myGreyColor
        view.layer.cornerRadius = 10
        var imageView = UIImageView();
        var image = UIImage(named: "search")
        imageView.image = image
        view.leftView = imageView;
        view.leftViewMode = UITextField.ViewMode.always
        view.leftViewMode = .always
        view.placeholder = "Search"
//        self.view.layer.borderColor = UIColor.myGreyColor.cgColor
//        view.layer.borderWidth = 1
        view.setLeftPaddingPoints(10)
//        view.setRightPaddingPoints(10)
        return view
    }()
    
    private lazy var storyViews: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var addYouStoryImage: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "add")
        return view
    }()
    
    private lazy var youStoryUIView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.myGreyColor
        view.layer.cornerRadius = 26
        view.addSubview(addYouStoryImage)
        addYouStoryImage.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.width.equalTo(20)
        }
        return view
    }()
    
    private lazy var addYouStoryLabel: UILabel = {
        let view = UILabel()
        view.text = "You story"
        view.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        view.textColor = UIColor.gray
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.barStyle = .default
        
        confugure()
    }
    
    func confugure() {
        setupAddSubViews()
        setupMakeContraints()
    }
    
    func setupAddSubViews() {
        view.addSubview(navView)
        view.addSubview(searchTextField)
        view.addSubview(storyViews)
        view.addSubview(youStoryUIView)
        view.addSubview(addYouStoryLabel)
    }
    
    
    func setupMakeContraints() {
        navView.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeArea.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(56)
        }
        
        searchTextField.snp.makeConstraints { (make) in
            make.top.equalTo(navView.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(36)
        }
        
        storyViews.snp.makeConstraints { (make) in
            make.top.equalTo(searchTextField.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(106)
        }
        
        youStoryUIView.snp.makeConstraints { (make) in
            make.top.equalTo(storyViews.snp.top).offset(14)
            make.leading.equalToSuperview().inset(16)
            make.height.width.equalTo(52)
        }
        
        addYouStoryLabel.snp.makeConstraints { (make) in
            make.top.equalTo(youStoryUIView.snp.bottom).offset(8)
            make.left.equalTo(youStoryUIView.snp.left)
        }
    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}


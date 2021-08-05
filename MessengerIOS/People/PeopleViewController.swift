//
//  PeopleViewComtroller.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/1/21.
//

import Foundation
import UIKit

class PeopleViewController: UIViewController {
    
    private lazy var navView: UIView = {
        let view = UIView()
        view.addSubview(profileTabBarImage)
        view.addSubview(peopleNavBarLabel)
        view.addSubview(messageUIView)
        view.addSubview(addContactUIView)
        view.backgroundColor = .clear
        view.layer.masksToBounds = true
        
        profileTabBarImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(8)
            make.leading.equalToSuperview().offset(16)
            make.height.width.equalTo(40)
        }
        
        peopleNavBarLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileTabBarImage.snp.top)
            make.bottom.equalTo(profileTabBarImage.snp.bottom)
            make.left.equalTo(profileTabBarImage.snp.right).offset(12)
        }
        
        messageUIView.snp.makeConstraints { (make) in
            make.top.equalTo(profileTabBarImage.snp.top)
            make.bottom.equalTo(profileTabBarImage.snp.bottom)
            make.right.equalTo(addContactUIView.snp.left).offset(-12)
            make.height.width.equalTo(40)
        }
        
        addContactUIView.snp.makeConstraints { (make) in
            make.top.equalTo(messageUIView.snp.top)
            make.bottom.equalTo(messageUIView.snp.bottom)
            make.right.equalToSuperview().offset(-16)
            make.height.width.equalTo(40)
        }
        return view
    }()
    
    private lazy var profileTabBarImage: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "profileImage")
        view.layer.cornerRadius = 20
        view.backgroundColor = .black
        return view
    }()
    
    private lazy var peopleNavBarLabel: UILabel = {
        let view = UILabel()
        view.text = "People"
        view.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return view
    }()
    
    private lazy var messageUIView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.myGreyColor
        view.layer.cornerRadius = 20
        view.addSubview(messageImage)
        messageImage.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.width.equalTo(20)
        }
        return view
    }()
    
    private lazy var messageImage: UIImageView = {
        let view  = UIImageView()
        view.image = #imageLiteral(resourceName: "message")
        return view
    }()
    
    private lazy var addContactUIView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.myGreyColor
        view.layer.cornerRadius = 20
        view.addSubview(addContactImage)
        addContactImage.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.height.equalTo(20)
            make.width.equalTo(22)
        }
        return view
    }()
    
    private lazy var addContactImage: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "add-contact")
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.barStyle = .default
        confugure()
    }
    
    func confugure() {
        setupAddSubViews()
        setupMakeContraints()
    }
    
    func setupAddSubViews()  {
        view.addSubview(navView)
        view.addSubview(searchTextField)
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
    }
}

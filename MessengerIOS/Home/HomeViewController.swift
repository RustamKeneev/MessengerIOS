//
//  HomeViewController.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/1/21.
//

import Foundation
import UIKit

class HomeViewController: UIViewController{
    
    
    private lazy var viewModel: FriendsStoryViewModel = {
        return FriendsStoryViewModel(delegate: self)
    }()
    
    private lazy var chatsViewModel: HomeChatsViewModel = {
        return HomeChatsViewModel(delegate: self)
    }()
    
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
    
    private lazy var friendStoryUIView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(friendsStoryCollectionView)
        friendsStoryCollectionView.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
        }
        return view
    }()
    
    private lazy var friendsStoryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
        cv.backgroundColor = .clear
        cv.register(FriendsStoryCell.self, forCellWithReuseIdentifier: FriendsStoryCell.reuseIdentifierCell)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    private lazy var advanceUIView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(advanceLogoImage)
        view.addSubview(advanceTitleLabel)
        view.addSubview(adUIView)
        view.addSubview(adDescriptionLabel)
        view.addSubview(viewMoreLabel)
        view.addSubview(adAnimationImage)
        
        advanceLogoImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(8)
            make.leading.equalToSuperview().offset(16)
        }
        
        advanceTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(advanceLogoImage.snp.top)
            make.left.equalTo(advanceLogoImage.snp.right).offset(12)
        }
        
        adUIView.snp.makeConstraints { (make) in
            make.top.equalTo(advanceTitleLabel.snp.top)
            make.left.equalTo(advanceTitleLabel.snp.right).offset(6)
            make.bottom.equalTo(advanceTitleLabel.snp.bottom)
            make.width.equalTo(22)
            make.height.equalTo(16)
        }
        
        adDescriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(advanceTitleLabel.snp.bottom).offset(4)
            make.left.equalTo(advanceTitleLabel.snp.left)
        }
        
        viewMoreLabel.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-8)
            make.left.equalTo(adDescriptionLabel)
        }
        
        adAnimationImage.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(8)
            make.right.equalToSuperview().offset(-16)
            make.height.width.equalTo(60)
        }
        return view
    }()
    
    private lazy var advanceLogoImage: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "advanceLogo")
        return view
    }()
    
    private lazy var advanceTitleLabel: UILabel = {
        let view = UILabel()
        view.text = "Pixsells"
        view.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        return view
    }()
    
    private lazy  var adUIView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 4
        view.addSubview(adTextLabel)
        adTextLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        return view
    }()
    
    private lazy var adTextLabel: UILabel = {
        let view = UILabel()
        view.text = "Ad"
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        return view
    }()
    
    private lazy var adDescriptionLabel: UILabel = {
        let view = UILabel()
        view.text = "Make design process easier..."
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 14, weight: .light)
        return view
    }()
    
    private lazy  var viewMoreLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        view.textColor = .blue
        view.text = "View More"
        return view
    }()
    
    private lazy var adAnimationImage: UIImageView = {
        let view  = UIImageView()
        view.image = #imageLiteral(resourceName: "animImage")
        return view
    }()
    
    private lazy var chatsTableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.layer.masksToBounds = true
        tableView.register(HomeChatsCell.self, forCellReuseIdentifier: "HomeChatsCell")
//        tableView.rowHeight = 100
        tableView.backgroundColor = .clear
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 10000, bottom: 0, right: 0)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        viewModel.fetchFriendsStory()
        chatsViewModel.fetchHomeChats()
        
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
        view.addSubview(friendStoryUIView)
        view.addSubview(advanceUIView)
        view.addSubview(chatsTableView)
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
        
        friendStoryUIView.snp.makeConstraints { (make) in
            make.top.equalTo(storyViews.snp.top)
            make.bottom.equalTo(addYouStoryLabel.snp.bottom)
            make.left.equalTo(youStoryUIView.snp.right)
            make.right.equalToSuperview()
        }
        
        advanceUIView.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.safeArea.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(76)
        }
        
        chatsTableView.snp.makeConstraints { (make) in
            make.top.equalTo(storyViews.snp.bottom).offset(8)
            make.bottom.equalTo(advanceUIView.snp.top)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.friendsStory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FriendsStoryCell.reuseIdentifierCell, for: indexPath) as! FriendsStoryCell
        let item = viewModel.friendsStory[indexPath.row]
        cell.setupData(data: item)
        return cell
    }
}

extension HomeViewController: FriendsStoryDelegate {
    func loadFriendsStory() {
        friendsStoryCollectionView.reloadData()
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatsViewModel.homeChats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeChatsCell", for: indexPath) as! HomeChatsCell
        
        let chatsData = chatsViewModel.homeChats[indexPath.section]
        cell.setupData(homeChats: chatsData)
        cell.layer.cornerRadius = 10
        cell.contentView.layer.masksToBounds = true
//        cell.backgroundColor = .clear
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.clear.cgColor
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.clipsToBounds = true
        return cell
    }
}

extension HomeViewController: HomeChatsDelegate{
    func loadHomeChats() {
        chatsTableView.reloadData()
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


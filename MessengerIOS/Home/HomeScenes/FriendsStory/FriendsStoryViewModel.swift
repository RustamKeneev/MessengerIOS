//
//  FriendsStoryView.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/1/21.
//

import Foundation
import UIKit

protocol FriendsStoryDelegate: class {
    func loadFriendsStory()
}

final class FriendsStoryViewModel{
    var friendsStory: [FriendStory] = []

    private lazy var repo: Repository = {
        return Repository()
    }()
    
    weak var delegate : FriendsStoryDelegate?
    
    init(delegate: FriendsStoryDelegate) {
        self.delegate = delegate
    }
    
    func fetchFriendsStory() {
        friendsStory.append(FriendStory(image: #imageLiteral(resourceName: "friends_story"), whiteView: UIColor.white, statusView: UIColor.green, text: "Joshua", textColor: UIColor.green))
        friendsStory.append(FriendStory(image: #imageLiteral(resourceName: "martin"), whiteView: UIColor.white, statusView: UIColor.green, text: "Martin", textColor: UIColor.green))
        friendsStory.append(FriendStory(image: #imageLiteral(resourceName: "karen"), whiteView: UIColor.white, statusView: UIColor.green, text: "Karen", textColor: UIColor.green))
        friendsStory.append(FriendStory(image: #imageLiteral(resourceName: "friends_story"), whiteView: UIColor.white, statusView: UIColor.green, text: "Joshua", textColor: UIColor.green))
        friendsStory.append(FriendStory(image: #imageLiteral(resourceName: "friends_story"), whiteView: UIColor.white, statusView: UIColor.green, text: "Joshua", textColor: UIColor.green))
        delegate?.loadFriendsStory()
    }
}

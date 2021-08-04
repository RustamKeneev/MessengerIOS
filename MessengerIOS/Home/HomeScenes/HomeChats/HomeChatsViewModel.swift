//
//  HomeChatsViewModel.swift
//  MessengerIOS
//
//  Created by Rustam Keneev on 8/4/21.
//

import Foundation

protocol HomeChatsDelegate: class {
    func loadHomeChats()
}

class HomeChatsViewModel {
    
    var homeChats: [HomeChats] = []
    
    private lazy var repo: Repository = {
        return Repository()
    }()

    weak var delegate : HomeChatsDelegate?
    
    init(delegate: HomeChatsDelegate) {
        self.delegate = delegate
    }
    
    func fetchHomeChats() {
        homeChats.append(HomeChats(image: #imageLiteral(resourceName: "martin"), fullName: "Martin Randolph", stringText: "You:", chatsText: "What's man!", time: "9:40 AM", roundedImage: #imageLiteral(resourceName: "read")))
        homeChats.append(HomeChats(image: #imageLiteral(resourceName: "adriev"), fullName: "Adrew Parker", stringText: "You:", chatsText: "Ok, thanks!", time: "9:25 AM", roundedImage: #imageLiteral(resourceName: "doneRead")))
        homeChats.append(HomeChats(image: #imageLiteral(resourceName: "karen"), fullName: "Karen Castillo", stringText: "You:", chatsText: "Ok, See you in To...", time: "Fri", roundedImage: #imageLiteral(resourceName: "doneRead")))
        homeChats.append(HomeChats(image: #imageLiteral(resourceName: "maisy"), fullName: "Maisy Humphrey", stringText: "", chatsText: "Have a good day, Maisy!", time: "Fri", roundedImage: #imageLiteral(resourceName: "doneRead")))
        homeChats.append(HomeChats(image: #imageLiteral(resourceName: "friends_story"), fullName: "Joshua Lawrence", stringText: "", chatsText: "The bussines plan loo...", time: "Thu", roundedImage: #imageLiteral(resourceName: "path")))
    }
}

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
        
    }
}

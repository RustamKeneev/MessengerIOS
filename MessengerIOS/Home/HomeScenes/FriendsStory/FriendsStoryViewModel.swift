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
    
    func fetchSCatalogProducts() {
//        productsCatalog.append(CatalogCustomsProductsModel(image: #imageLiteral(resourceName: "drug"), text: "Лекарства", type: .CatalogCustomProducts, color: .white, textColor: .black))
//        productsCatalog.append(CatalogCustomsProductsModel(image: #imageLiteral(resourceName: "spring"), text: "Травы", type: .CatalogCustomProducts, color: .white, textColor: .black))
//        productsCatalog.append(CatalogCustomsProductsModel(image: #imageLiteral(resourceName: "bads"), text: "БАДы", type: .CatalogCustomProducts, color: .white, textColor: .black))
        
        delegate?.loadFriendsStory()
    }
}

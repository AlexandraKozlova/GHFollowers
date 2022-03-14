//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Aleksandra on 18.02.2022.
//

import UIKit

protocol GFFollowerItemVCDelegate: AnyObject {
    
    func didTabGetFollowers(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GFFollowerItemVCDelegate!
    
    init(user: User, delegate: GFFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItem()
    }
    
    private func configureItem() {
        infoItemViewOne.set(itemInfoType: .followers, withCount: user.followers)
        infoItemViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTabGetFollowers(for: user)
    }
}

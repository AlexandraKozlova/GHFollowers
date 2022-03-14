//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Aleksandra on 18.02.2022.
//

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTabGitHubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    init(user: User, delegate: GFRepoItemVCDelegate) {
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
        infoItemViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        infoItemViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTabGitHubProfile(for: user) 
    }
}

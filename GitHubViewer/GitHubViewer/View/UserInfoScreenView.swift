//
//  ResponseScreenView.swift
//  GitHubViewer
//
//  Created by unicred on 01/02/23.
//

import UIKit

class UserInfoScreenView: BaseView {
    
    let cellId = "cellId"
    
    var setUser: User? {
        didSet{
            username.text = setUser?.name
            if let avatarUrl = setUser?.avatarUrl {
                gitIcon.downloaded(from: avatarUrl)
            }
        }
    }

    lazy var gitIcon: UIImageView = {
        let gitIcon = UIImageView()
        gitIcon.image = UIImage(named: "githubicon")
        return gitIcon
    }()
    
    lazy var username: UILabel = {
        let username = UILabel()
        username.text = "aaaa"
        username.numberOfLines = 0
        username.textAlignment = .center
        return username
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame:.zero,
            collectionViewLayout: UICollectionViewFlowLayout())
        return collectionView
    }()

    override func addSubview() {
        addSubview(gitIcon)
        addSubview(username)
        addSubview(collectionView)
    }

    override func setConstraints() {
        gitIcon.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 200))
        
        gitIcon.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        username.anchor(
            top: gitIcon.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 150, height: 60))
        
        username.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        collectionView.anchor(
            top: username.bottomAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 10, left: 10, bottom: 0, right: 10),
            size: .init(width: 360, height: 500))
    }

}

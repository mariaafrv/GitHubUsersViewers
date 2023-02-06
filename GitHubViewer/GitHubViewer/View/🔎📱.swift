//
//  SearchScreenView.swift
//  GitHubViewer
//
//  Created by unicred on 01/02/23.
//

import UIKit

class 🔎📱: BaseView {

    lazy var 📷: UIImageView = {
        let gitIcon = UIImageView()
        gitIcon.image = UIImage(named: "githubicon")
        return gitIcon
    }()
    
    lazy var 🔎: UITextField = {
        let searchTextField = UITextField()
        searchTextField.placeholder = "GitHub username"
        searchTextField.autocapitalizationType = .none
        searchTextField.autocorrectionType = .no
        searchTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: searchTextField.frame.height))
        searchTextField.leftViewMode = .always
        searchTextField.layer.borderWidth = 2
        searchTextField.layer.cornerRadius = 8
        searchTextField.layer.masksToBounds = true
        return searchTextField
    }()
    
    lazy var searchButton: UIButton = {
        let searchButton = UIButton()
        searchButton.setTitle("Search", for: .normal)
        searchButton.backgroundColor = .black
        searchButton.layer.cornerRadius = 8
        return searchButton
    }()
    
    override func addSubview() {
        addSubview(📷)
        addSubview(🔎)
        addSubview(searchButton)
    }
    
    override func setConstraints() {
        📷.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 200))
        
        📷.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        🔎.anchor(
            top: 📷.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 360, height: 60))
        
        🔎.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        searchButton.anchor(
            top: 🔎.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 170, height: 40))
        
        searchButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
}

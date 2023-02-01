//
//  ViewController.swift
//  GitHubViewer
//
//  Created by unicred on 01/02/23.
//

import UIKit

class SearchViewController: UIViewController {

    let customView = SearchScreenView()
    let githubApi = GetApi()
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.searchButton.addTarget(self, action: #selector(searchUser), for: .touchUpInside)
    }
    
    @objc func searchUser(){
        let userInfoViewController = UserInfoViewController()
        githubApi.getUser(username: customView.searchTextField.text ?? "", completion: { user in
            if let user = user {
                print(">>>>>>>>>>>>>>>>>", user.name)
            }
        })
        
        navigationController?.pushViewController(userInfoViewController, animated: true)
        }
    

}

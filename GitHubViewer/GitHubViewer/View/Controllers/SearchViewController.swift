//
//  ViewController.swift
//  GitHubViewer
import UIKit

class SearchViewController: UIViewController {
    
    let customView = SearchScreenView()
    let githubApi = GetApi()
    
    var listRepos: [Repos] = []
    
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
        let username = customView.searchTextField.text ?? ""
        
        githubApi.getInfo(User.self, url: "https://api.github.com/users/\(username)") { user in
            guard let user = user else {
                return
            }
            
            print(user.name, "<<<<<<<<<<<<<<<<<<")
            userInfoViewController.setInfo(name: user)
            
            self.githubApi.getInfo([Repos].self, url: "https://api.github.com/users/\(username)/repos") { repos in
                guard let repos = repos else {
                    return
                }
                
                
                userInfoViewController.reposCount = repos
                
                self.navigationController?.pushViewController(userInfoViewController, animated: true)
            }
            
        }
        
        
        
        
        
    }
    
    
}

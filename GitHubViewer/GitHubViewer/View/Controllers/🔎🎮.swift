//
//  ViewController.swift
//  GitHubViewer
import UIKit

class 🔎🎮: UIViewController {
    
    let customView = 🔎📱()
    let githubApi = GetApi()
    
    var 🔖🔖🔖🔖: [🔖] = []
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.searchButton.addTarget(self, action: #selector(searchUser), for: .touchUpInside)
    }
    
    @objc func searchUser(){
        let userInfoViewController = 👤📖🎮()
        let username = customView.🔎.text ?? ""
        
        githubApi.getInfo(👤.self, url: "https://api.github.com/users/\(username)") { user in
            guard let user = user else {
                return
            }
            
            print(user, "<<<<<<<<<<<<<<<<<<")
            userInfoViewController.setInfo(name: user)
            
            self.githubApi.getInfo([🔖].self, url: "https://api.github.com/users/\(username)/repos") { repos in
                guard let repos = repos else {
                    return
                }
                userInfoViewController.reposCount = repos
                
                self.navigationController?.pushViewController(userInfoViewController, animated: true)
            }
        }
        
    }
}

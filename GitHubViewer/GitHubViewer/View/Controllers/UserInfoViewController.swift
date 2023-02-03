import UIKit

class UserInfoViewController: UIViewController {

    let customView = UserInfoScreenView()
    
    private var cellId = "cellId"
    var reposCount: [Repos] = []
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = self
        customView.collectionView.register(UserListCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func setInfo(name: User) {
        customView.setUser = name
    }
    
}

extension UserInfoViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return reposCount.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! UserListCollectionViewCell
        cell.listRepos = reposCount[indexPath.item]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20 , height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}


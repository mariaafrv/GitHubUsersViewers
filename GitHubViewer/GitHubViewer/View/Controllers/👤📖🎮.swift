import UIKit

class 👤📖🎮: UIViewController {

    let customView = 👤📖()
    
    private var cellId = "cellId"
    var 🔖🔖❓: [🔖] = []
    
    override func loadView() {
        let view = customView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = self
        customView.collectionView.register(👤👤👤👤.self, forCellWithReuseIdentifier: cellId)
    }
    
    func setInfo(name: 👤) {
        customView.setUser = name
    }
    
}

extension 👤📖🎮: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 🔖🔖❓.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! 👤👤👤👤
        cell.🔖🔖🔖🔖 = 🔖🔖❓[indexPath.item]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20 , height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}


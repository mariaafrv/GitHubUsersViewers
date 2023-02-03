import UIKit

class UserListCollectionViewCell: BaseCell {

    var listRepos: Repos?{
        didSet {
            name.text = listRepos?.name
            tagLanguage.text = listRepos?.language
        }
    }
    
    lazy var cell: UICollectionViewCell = {
        let cell = UICollectionViewCell()
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 6
        cell.layer.borderColor = UIColor.systemGray5.cgColor
        cell.backgroundColor = .systemGray6
        return cell
    }()
    
    lazy var name: UILabel = {
        let name = UILabel()
        name.text = "aaaaa"
        name.font = .systemFont(ofSize: 20)
        return name
    }()
    
    lazy var tagLanguage: UILabel = {
        let tagLanguage = LanguageLabel(withInsets: 3, 3, 8, 8)
        tagLanguage.font = .systemFont(ofSize: 14)
        tagLanguage.backgroundColor = .blue
        tagLanguage.textAlignment = .center
        return tagLanguage
    }()
    
    
    override func addSubviews() {
        addSubview(cell)
        cell.addSubview(name)
        cell.addSubview(tagLanguage)
    }
    
    override func addConstraints() {
        cell.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 5, left: 10, bottom: 5, right: 10),
            size: .init(width: 340, height: 0))
        
        name.anchor(
            top: cell.topAnchor,
            leading: cell.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 10, bottom: 0, right: 0),
            size: .init(width: 200, height: 30))
        
        tagLanguage.anchor(
            top: name.bottomAnchor,
            leading: name.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 5, left: 0, bottom: 0, right: 0)
        )
    }
    
}

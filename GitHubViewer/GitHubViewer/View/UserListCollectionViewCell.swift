import UIKit

class UserListCollectionViewCell: BaseCell {

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
        return name
    }()
    
    
    override func addSubviews() {
        addSubview(cell)
        cell.addSubview(name)
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
            padding: .init(top: 5, left: 10, bottom: 0, right: 0),
            size: .init(width: 150, height: 30))
    }
    
}

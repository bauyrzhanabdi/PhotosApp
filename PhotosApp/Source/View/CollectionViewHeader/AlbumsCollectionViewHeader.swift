import UIKit
import SnapKit

final class AlbumsCollectionViewHeader: UICollectionReusableView {
    
    // MARK: - Outlets
    
    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var moreButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(.systemBlue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(lineView)
        addSubview(headerLabel)
        addSubview(moreButton)
    }
    
    private func setupLayout() {
        lineView.snp.makeConstraints { make in
            make.top.left.right.equalTo(self)
            make.height.equalTo(1)
        }
        
        headerLabel.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.bottom.equalTo(self)
        }
        
        moreButton.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-10)
            make.bottom.equalTo(self)
        }
    }
    
    // MARK: - Methods
    
    override func prepareForReuse() {
        super.prepareForReuse()
        headerLabel.text = nil
        moreButton.setTitle(nil, for: .normal)
    }
}

import UIKit
import SnapKit

final class MediaCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var quantityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var accessoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chevron.right")
        imageView.tintColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
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
        addSubview(iconImageView)
        addSubview(titleLabel)
        addSubview(quantityLabel)
        addSubview(accessoryImageView)
    }
    
    private func setupLayout() {
        iconImageView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(5)
            make.centerY.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(iconImageView.snp.right).offset(10)
            make.centerY.equalToSuperview()
        }
        
        accessoryImageView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-5)
            make.centerY.equalToSuperview()
        }
        
        quantityLabel.snp.makeConstraints { make in
            make.right.equalTo(accessoryImageView.snp.left).offset(-5)
            make.centerY.equalToSuperview()
        }
    }
    
    // MARK: - Methods
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        titleLabel.text = nil
        quantityLabel.text = nil
    }
    
    func configure(model: AlbumsModel) {
        guard let image = UIImage(systemName: model.image) else { return }
        iconImageView.image = image
        titleLabel.text = model.title
        quantityLabel.text = model.quantity
    }
}

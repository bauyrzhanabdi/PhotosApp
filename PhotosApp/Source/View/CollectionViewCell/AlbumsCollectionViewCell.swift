import UIKit
import SnapKit

final class AlbumsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    
    private lazy var albumsContainer: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var albumsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
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
        addSubview(albumsContainer)
        albumsContainer.addArrangedSubview(albumsImageView)
        albumsContainer.addArrangedSubview(titleLabel)
        albumsContainer.addArrangedSubview(quantityLabel)
    }
    
    private func setupLayout() {
        albumsContainer.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(400)
        }
    }
    
    // MARK: - Methods
    
    func configure(model: AlbumsModel) {
        guard let image = UIImage(named: model.image) else { return }
        albumsImageView.image = image
        titleLabel.text = model.title
        quantityLabel.text = model.quantity
    }
}

import UIKit

final class TabBarController: UITabBarController {

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    // MARK: - Setup
    private func setupTabBarController() {
        tabBar.tintColor = .black
        tabBar.backgroundColor = .systemGray5
    }

    private func setupTabBarViewControllers() {
        let libraryViewController = LibraryViewController()
        let libraryIcon = UITabBarItem(
            title: "Library",
            image: UIImage(systemName: "photo.artframe"),
            selectedImage: UIImage(systemName: "photo.artframe")
        )
        libraryViewController.tabBarItem = libraryIcon
        
        let forYouViewController = ForYouViewController()
        let forYouIcon = UITabBarItem(
            title: "For You",
            image: UIImage(systemName: "lock.doc"),
            selectedImage: UIImage(systemName: "lock.doc.fill")
        )
        forYouViewController.tabBarItem = forYouIcon
        
        let albumsViewController = AlbumsViewController()
        let albumsIcon = UITabBarItem(
            title: "Albums",
            image: UIImage(systemName: "creditcard"),
            selectedImage: UIImage(systemName: "creditcard.fill")
        )
        albumsViewController.tabBarItem = albumsIcon
        
        let searchViewController = SearchViewController()
        let searchIcon = UITabBarItem(
            title: "Search",
            image: UIImage(systemName: "magnifyingglass"),
            selectedImage: UIImage(systemName: "magnifyingglass")
        )
        searchViewController.tabBarItem = searchIcon
        
        let libraryNavigationController = UINavigationController(rootViewController: libraryViewController)
        let forYouNavigationController = UINavigationController(rootViewController: forYouViewController)
        let albumsNavigationController = UINavigationController(rootViewController: albumsViewController)
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        
        let controllers = [
            libraryNavigationController,
            forYouNavigationController,
            albumsNavigationController,
            searchNavigationController
        ]
        self.setViewControllers(controllers, animated: true)
    }
}


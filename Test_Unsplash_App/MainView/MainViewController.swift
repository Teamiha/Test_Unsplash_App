//
//  MainViewController.swift
//  Test_Unsplash_App
//
//  Created by Михаил Светлов on 05.01.2023.
//

import UIKit


class MainViewController: UIViewController {
    
    let cellID = "ID"
    
    lazy var SearchBar: UISearchController = {
        let searchBar = UISearchController()
        searchBar.searchBar.placeholder = "Test"
        searchBar.searchBar.searchBarStyle = .minimal
        return searchBar
    }()
    
    lazy var MovieCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width/3 - 10, height: 200)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title  = "Test Nav"
        view.backgroundColor = .systemBackground
        SearchBar.searchResultsUpdater = self
        view.addSubview(MovieCollectionView)
        MovieCollectionView.delegate = self
        MovieCollectionView.dataSource = self
        navigationItem.searchController = SearchBar
        setConstraints()
        
    }
    
}

//MARK: - Private Methods

private extension MainViewController {
    
    //MARK: - Constraints
    
    func setConstraints() {
            MovieCollectionView.translatesAutoresizingMaskIntoConstraints = false
            MovieCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            MovieCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            MovieCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            MovieCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        }
    
    
    
}

// MARK: - UICollection

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20

    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }

}

extension MainViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard searchController.searchBar.text != nil else {return}
    }
    
    
    
}

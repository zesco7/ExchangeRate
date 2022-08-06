//
//  SearchMovieViewCollectionViewController.swift
//  TMDBProject
//
//  Created by Mac Pro 15 on 2022/08/06.
//

import UIKit

class SearchMovieViewCollectionViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        SearchMovieViewCollectionViewCell.delega
    }

    
}

extension SearchMovieViewCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

//
//  CollectionViewController.swift
//  UICollectionView-Tutorial
//
//  Created by Damla Çim on 11.03.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            
            let rowElements : CGFloat = 2
            let space: CGFloat = 5
            let sumSpace = space * (rowElements - 1)
            let itemSpace = sumSpace / rowElements
            let width = collectionView.frame.width / rowElements - itemSpace
            let height = width
            
            layout.itemSize = CGSize(width: width, height: height)
            //itemlar arası boşluğu ayarlar
            layout.minimumInteritemSpacing = space
            //satırlar arası boşluğu ayarlar
            layout.minimumLineSpacing = space
        }
    

        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        if let customCell = cell as? CollectionViewCell {
            customCell.studentNameLabel.text = "Student \(indexPath.row)"
            return customCell
        }
        
        return cell
    }

}

//
//  CollectionViewController.swift
//  UICollectionView-Tutorial
//
//  Created by Damla Çim on 11.03.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

struct Student {
    let name: String
    let studentNum: Int
}

class CollectionViewController: UICollectionViewController {
    
    var student: [Student] = [Student]()

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
        
        let s1 = Student(name: "Damla", studentNum: 123)
        let s2 = Student(name: "Çağla", studentNum: 234)
        let s3 = Student(name: "Beyda", studentNum: 345)
        let s4 = Student(name: "Hilal", studentNum: 455)
        let s5 = Student(name: "Nurdan", studentNum: 678)
        let s6 = Student(name: "Sude", studentNum: 450)
        
        student.append(s1)
        student.append(s2)
        student.append(s3)
        student.append(s4)
        student.append(s5)
        student.append(s6)
    

        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return student.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        if let customCell = cell as? CollectionViewCell {
            customCell.studentNameLabel.text = student[indexPath.row].name
            return customCell
        }
        
        return cell
    }

}

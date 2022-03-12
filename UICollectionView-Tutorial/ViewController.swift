//
//  ViewController.swift
//  UICollectionView-Tutorial
//
//  Created by Damla Çim on 11.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var student: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let name = student?.name ?? "unknown"
        let number = student?.studentNum ?? 0
        
        nameLabel.text = name
        numberLabel.text = "\(number)"
    }


}


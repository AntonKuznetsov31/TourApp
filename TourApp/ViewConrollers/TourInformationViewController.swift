//
//  TourInformationViewController.swift
//  TourApp
//
//  Created by Anton Kuznetsov on 8/16/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class TourInformationViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var hotel: UILabel!
    @IBOutlet weak var food: UILabel!
    @IBOutlet weak var price: UILabel!
    
    // MARK: - Public Methods
    
    var tour: Tour!
    
    override func viewDidLoad() {
        collectionView.delegate = self
        
    }

    
    func updateUI() {
        city.text = "\(tour.city), \(tour.country)"
        hotel.text = tour.name
    }
}

extension TourInformationViewController: UICollectionViewDelegate {
    
}


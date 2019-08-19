//
//  PaymentConfirmViewController.swift
//  TourApp
//
//  Created by Александр Уткин on 17/08/2019.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class PaymentConfirmViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var country: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var hotelLabel: UILabel!
    @IBOutlet var foodLabel: UILabel!
    @IBOutlet var buy: UIButton!
    
    // MARK: - Public Properties
    
    var tour: Tour!
    var tourist: Tourist!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - IBActions
    
    @IBAction func buyButtonPressed() {
        let alertBuy = UIAlertController(
            title: "\(tourist.fullName!), you bought tour in \(tour.country)",
            message: "Number of persons: \(tourist.numberOfPersons!)",
            preferredStyle: .alert)
        alertBuy.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: {action in
                self.performSegue(withIdentifier: "goToMain", sender: self)
        }
        ))
        
        self.present(alertBuy, animated: true, completion: nil)
    }
    
    // MARK: - Public Methods
    
    func updateUI() {
        buy.setTitle("Buy for \(tour.price) RUB", for: .normal)
        country.text = tour.country
        cityLabel.text = tour.city
        foodLabel.text = tour.food
        hotelLabel.text = tour.name
    }
}

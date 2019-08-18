//
//  PaymentConfirmVC.swift
//  TourApp
//
//  Created by Александр Уткин on 17/08/2019.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class PaymentConfirmVC: UIViewController {
    
    @IBOutlet var country: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var hotelLabel: UILabel!
    @IBOutlet var foodLabel: UILabel!
    @IBOutlet var buy: UIButton!
    
    var tour: Tour!
    var tourist: Tourist!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buyButtonPressed() {
        let alertBuy = UIAlertController(
            title: "\(tourist.nameSurname!), you bought tour in \(tour.country)",
            message: "Number of persons: \(tourist.numberOfPersons!)",
            preferredStyle: .alert)
        alertBuy.addAction(UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: nil))
        self.present(alertBuy, animated: true, completion: nil)
    }
    
    func updateUI() {
        buy.setTitle("Buy for \(tour.price) RUB", for: .normal)
        country.text = tour.country
        cityLabel.text = tour.city
        foodLabel.text = tour.food
        hotelLabel.text = tour.name
    }
}

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
    
    @IBOutlet var buyButtonLabel: UIButton!
    
    var tour: Tour!
    var tourist: Tourist!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buyButtonPressed() {
        let alertBuy = UIAlertController(title: "You bought tour in \(tour.country)",
            message: "Number of persons: \(tourist.numberOfPersons!)",
            preferredStyle: .alert)
        alertBuy.addAction(UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: nil))
        self.present(alertBuy, animated: true, completion: nil)
    }
    
    func updateUI() {
        buyButtonLabel.titleLabel?.text = "Buy for \(tour.price) RUB"
        
        country.text = tour.country
        cityLabel.text = tour.city
        
        /*
         switch tour.food {
         case .ai:
         foodLabel.text = "Всё включено"
         case .bb:
         foodLabel.text = "Завтрак"
         case .hb:
         foodLabel.text = "Завтрак и ужин"
         case .ro:
         foodLabel.text = "Без питания"
         case .uai:
         foodLabel.text = "Ультра всё включено"
         }
         */
        hotelLabel.text = tour.name
    }
}

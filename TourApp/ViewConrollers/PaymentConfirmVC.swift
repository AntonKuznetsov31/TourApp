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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buyButtonPressed() {
        
        let alertBuy = UIAlertController(title: "Поздравляем",
            message: "Вы приобрели путевку в отель\(tour.country)",
            preferredStyle: .alert)
        alertBuy.addAction(UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: nil))
        self.present(alertBuy, animated: true, completion: nil)
    }
    
    func updateUI() {
        
        buyButtonLabel.titleLabel?.text = "Купить за \(tour.price) руб."
        
        country.text = tour.country
        cityLabel.text = tour.city
        hotelLabel.text = tour.name
        foodLabel.text = tour.food
    }
}

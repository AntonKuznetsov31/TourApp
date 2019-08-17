//
//  PaymentConfirmVC.swift
//  TourApp
//
//  Created by Александр Уткин on 17/08/2019.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class PaymentConfirmVC: UIViewController {

    @IBOutlet var county: UILabel!
    var tour: Tour!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVC()

       
    }
    
    func setupVC() {
     county.text = tour.country
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "bookSegue" else { return }
        
        let selectedTour = tour
        let paymentVC = segue.destination as! PaymentConfirmVC
        
        paymentVC.tour = selectedTour
        
    }
    

    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

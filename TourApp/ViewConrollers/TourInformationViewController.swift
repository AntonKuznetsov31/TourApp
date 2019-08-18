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

    @IBOutlet weak var tourImage: UIImageView!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var hotel: UILabel!
    @IBOutlet weak var food: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var amountOfPersons: UITextField!
    @IBOutlet weak var nameSurname: UITextField!
    
    // MARK: - Public Properties
    
    var tour: Tour!
    var tourist = Tourist()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        updateUI()
        nameSurname.delegate = self
        amountOfPersons.delegate = self
    }

    // MARK: - Private Methods
    
    private func updateUI() {
        city.text = "\(tour.city), \(tour.country)"
        hotel.text = tour.name
        food.text = tour.food
        price.text = "\(tour.price) RUB"
        tourImage.image = UIImage(named: tour.image)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! PaymentConfirmVC
        dvc.tourist = tourist
        dvc.tour = tour
    }
}

// MARK: - Text field delegate
extension TourInformationViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let enteredText = textField.text else { return }
        switch textField.tag {
        case 0:
            tourist.nameSurname = enteredText
        case 1:
            tourist.numberOfPersons = Int(enteredText) ?? 1
        default:
            return
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameSurname {
            textField.resignFirstResponder()
            amountOfPersons.becomeFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}



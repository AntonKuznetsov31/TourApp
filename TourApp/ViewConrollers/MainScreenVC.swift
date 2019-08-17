//
//  MainScreenVC.swift
//  TourApp
//
//  Created by Борис Крисько on 8/17/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
}

class MainScreenVC: UITableViewController {
    
    var tours: [Tour] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tours = MakeHotelsList.data.loadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tours.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hotelInfo", for: indexPath) as! MainTableViewCell
        
        
        
        let testHotel = Tour.init(name: "Paris Plaza", country: "France", city: "Paris", price: 1000 , food: .ai)

        cell.nameLabel.text = testHotel.name
        cell.cityLabel.text = testHotel.city
        cell.countryLabel.text = testHotel.country
        cell.priceLabel.text = String(testHotel.price)
        cell.foodLabel.text = "AI"

        return cell
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

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
    @IBOutlet weak var imageImageView: UIImageView!
}

class MainScreenVC: UITableViewController {
    
    var tours: [Tour] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tours = MakeHotelsList.data.loadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tours.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hotelInfo", for: indexPath) as! MainTableViewCell
        
        let tour = tours[indexPath.row]
        
        cell.nameLabel.text = tour.name
        cell.cityLabel.text = tour.city
        cell.countryLabel.text = tour.country
        cell.priceLabel.text = String(tour.price)
        cell.foodLabel.text = tour.food
        cell.imageImageView.image = UIImage.init(named: tour.image )
        
        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! TourInformationViewController
            detailVC.tour = tours[indexPath.row]
        }
    }
}

//
//  MakeHotelsList.swift
//  TourApp
//
//  Created by Борис Крисько on 8/17/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class MakeHotelsList {
   
    static let data = MakeHotelsList()

func loadData() -> [Tour] {
    let tours = [
        Tour(name: "Anita ApartHotel 4*",
         country: "Greece",
         city: "Rodos",
         price: 84014,
         food: "RO",
         image: "AnitaApartHotel"
        ),
        Tour(name: "Irida Hotel 3*",
             country: "Greece",
             city: "Heraklion",
             price: 87309,
             food: "RO",
             image: "IridaHotelApartments"
        ),
        Tour(name: "Citymax Dubai 3*",
             country: "UAE",
             city: "Dubai",
             price: 78677,
             food: "BB",
             image: "CitymaxHotelBurDubai"
        ),
        Tour(name: "Acacia Majid 4*",
             country: "UAE",
             city: "Ras El Hekma",
             price: 78402,
             food: "BB",
             image: "AcaciabyBinMajid"
        ),
        
        Tour(name: "Copthorne Hotel 4*",
             country: "UAE",
             city: "Sharjah",
             price: 79872,
             food: "BB",
             image: "CopthorneHotelSharjah"
        ),
        
        Tour(name: "Hedef Resort & Spa 5*",
             country: "Turkey",
             city: "Konakli",
             price: 81274,
             food: "UIA",
             image: "HedefResort&Spa"
        ),
        Tour(name: "Campus Hill Hotel 5*",
             country: "Turkey",
             city: "Alanya",
             price: 81274,
             food: "AI",
             image: "CampusHillHotel"
        ),
    ]
    
    return tours.shuffled()
}
}

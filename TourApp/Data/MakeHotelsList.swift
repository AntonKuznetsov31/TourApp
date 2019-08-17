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
        )
    ]
    return tours
}

}


//
//  Tour.swift
//  TourApp
//
//  Created by Борис Крисько on 8/15/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

struct Tour {
    
    let name : String
    let country: String
    let city: String
    let price: Int
    let food: FoodType
}

enum FoodType {
    case ro
    case bb
    case hb
    case ai
    case uai
}

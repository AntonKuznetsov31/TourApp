//
//  ExtensionForGroupView.swift
//  TourApp
//
//  Created by Ильнур Султанов on 19/08/2019.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

extension MainScreenVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return groupedTours.count
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let country = groupedTours[section].country
        
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        label.text = country
        
        return label.text
    }
    
    func groupByCountry(tours: [Tour]) -> [TourGroup] {
        var sections:[TourGroup] = []
        
        let groups = Dictionary(grouping: tours) { (tours) ->  String in
            
            return tours.country
        }
        sections = groups.map { (key, values) in
            return TourGroup(country: key, tour: values)
        }
        
        return sections
    }
}

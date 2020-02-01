//
//  CardTableViewController.swift
//  Cards
//
//  Created by Gustavo Dorea on 2/1/20.
//  Copyright © 2020 Gustavo Dorea. All rights reserved.
//

import UIKit


struct Place {
    var name:String
    var address:String
    var image:UIImage
}
class CardTableViewController: UITableViewController {

    
    var placeList = [Place]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1.0)
        self.tableView.separatorStyle = .none
        
        placeList.append(Place(name: "Google", address: "1600 Amphitheatre Parkway", image: UIImage(named: "pin_search_0")!))
        placeList.append(Place(name: "Facebook", address: "1 Hacker Way Menlo Park", image: UIImage(named: "pin_search_1")!))
        placeList.append(Place(name: "Apple", address: "One Infinite Loop", image: UIImage(named: "pin_search_2")!))
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return placeList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
         let cell =  Bundle(for:CardTableViewCell.self).loadNibNamed("CardTableViewCell", owner: self, options: nil)?.first as! CardTableViewCell
    
        cell.placeName.text =  placeList[indexPath.row].name
        cell.address.text =  placeList[indexPath.row].address
        cell.placeImage.image =   placeList[indexPath.row].image
        
        return cell
    }
    
    
   override  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 110.0
      }
    
}

//
//  ViewController.swift
//  SimpleTable
//
//  Created by iOS Swift on 4/11/19.
//  Copyright © 2019 Instruct. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var restaruantNames = ["Toa Payoh Food", "SMU Food Court", "Killiney Kopitiam"]
    
    var restaurantImages = ["Barrafina", "Donostia", "Traif"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaruantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath)
        
        cell.textLabel?.text = restaruantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


//
//  ViewController.swift
//  TableViewApp
//
//  Created by user268071 on 2/27/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var cities = [
        CityState("Auburn", "AL"),
        CityState("Atlanta", "GA"),
        CityState("Chicago", "IL"),
        CityState("New York", "NY"),
        CityState("Los Angeles", "CA"),
        CityState("Austin", "TX"),
        CityState("Tucson", "AZ")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}


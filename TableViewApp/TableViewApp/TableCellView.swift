//
//  TableCellView.swift
//  TableViewApp
//
//  Created by user268071 on 2/27/25.
//

import UIKit

class TableCellView: UIViewController {
    
    var animalFactData: AnimalFact?
    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var factLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = animalFactData {
            animalNameLabel.text = data.animalName
            factLabel.text = data.fact
        }
    }
}

//
//  ViewController.swift
//  TableViewApp
//
//  Created by user268071 on 2/27/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var animals = [
        AnimalFact("Octopus", "An octopus has three hearts and blue blood."),
        AnimalFact("Kangaroo", "Kangaroos can't walk backward."),
        AnimalFact("Axolotl", "Axolotls can regenerate entire limbs and even parts of their heart and brain."),
        AnimalFact("Sloth", "Sloths can hold their breath longer than dolphins—up to 40 minutes!"),
        AnimalFact("Pistol Shrimp", "Pistol shrimp can snap their claws so fast that it creates a bubble almost as hot as the sun."),
        AnimalFact("Platypus", "Platypuses are one of the only mammals that lay eggs."),
        AnimalFact("Tardigrade", "Tardigrades, also known as water bears, can survive in space."),
        AnimalFact("Puffin", "Puffins use their beaks to carry multiple fish at once—up to 10 at a time!"),
        AnimalFact("Mantis Shrimp", "Mantis shrimp punch with the speed of a bullet, powerful enough to break glass."),
        AnimalFact("Starfish", "Starfish can regenerate lost arms and even grow a whole new body from a single arm.")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        // Only display the animal name in the table
        content.text = animals[indexPath.row].animalName
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Pass the selected AnimalFact as the sender
        performSegue(withIdentifier: "CellViewer", sender: animals[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CellViewer",
           let destinationVC = segue.destination as? TableCellView,
           let selectedAnimal = sender as? AnimalFact {
            destinationVC.animalFactData = selectedAnimal
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed.
    }
}

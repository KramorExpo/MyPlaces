//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Евгений on 05.03.2020.
//  Copyright © 2020 Евгений. All rights reserved.
//



import UIKit


class MainViewController: UITableViewController {
    
    
    let places = [Place(name: "Сидрерия", location: "Saint-P", type: "Bar", image: "first")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        
        cell.imageInTable.image = UIImage(named: places[indexPath.row].image)
        cell.imageInTable.layer.cornerRadius = cell.imageInTable.frame.size.height / 2
        cell.imageInTable.clipsToBounds = true //Скругление изображений
    
        return cell
    }
    
    // MARK: - Table View Delegation
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}
}

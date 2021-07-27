//
//  CityListTableViewController.swift
//  cityListApp
//
//  Created by Вадим Семёнов on 22.07.2021.
//

import UIKit

class CityListTableViewController: UITableViewController {

    let citiesNameArray = ["Мадрид","Барселона", "Валенсия", "Севилья", "Сарагоса", "Малага", "Мурсия", "Пальма-де-Майорка", "Лас-Пальмас-де-Гран-Канария", "Бильбао"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return citiesNameArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        cell.imageView?.image = UIImage(named: citiesNameArray[indexPath.row])
        cell.textLabel?.text = citiesNameArray[indexPath.row]

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailViewController
                detailsVC.cityTitle = citiesNameArray[indexPath.row]
            }
        }
        
    }
    

}

//
//  ViewController.swift
//  TableVIewHomework
//
//  Created by Andrey Markov on 2020-09-10.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class FirstTable: UITableViewController {

    var persons : [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsName", for: indexPath)
        
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName

        return cell
    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let email = data.emails[indexPath.row]
//        performSegue(withIdentifier: "showDetails", sender: email)
//    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let detailsVC = segue.destination as! DetailsFirstViewController
            detailsVC.person = persons[indexPath.row]
            
        }
        


}
}


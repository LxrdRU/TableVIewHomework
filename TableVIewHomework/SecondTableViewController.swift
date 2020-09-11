//
//  SecondTableViewController.swift
//  TableVIewHomework
//
//  Created by Andrey Markov on 2020-09-11.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {

    var persons: [Person] = []
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let person = persons[indexPath.section]
        
        switch indexPath.row{
        case 0:
            cell.textLabel?.text = person.phone
            cell.imageView?.image = UIImage(systemName:Contacts.phone.rawValue)
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName:Contacts.email.rawValue)
        }
        return cell
    }
}

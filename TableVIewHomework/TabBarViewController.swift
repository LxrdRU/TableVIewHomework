//
//  TabBarViewController.swift
//  TableVIewHomework
//
//  Created by Andrey Markov on 2020-09-11.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: persons)
    }
    private func setupViewControllers(with persons: [Person]){
        let contactListVC = viewControllers?.first as! FirstTable
        let sectionVC = viewControllers?.last as! SecondTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }

}

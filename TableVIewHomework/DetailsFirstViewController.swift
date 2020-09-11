//
//  DetailsFirstViewController.swift
//  TableVIewHomework
//
//  Created by Andrey Markov on 2020-09-11.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class DetailsFirstViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    var person:Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        emailLabel.text = person.email
        phoneLabel.text = person.phone
    }
    

  

}

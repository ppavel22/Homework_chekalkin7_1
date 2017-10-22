//
//  LastScreenController.swift
//  Homework7
//
//  Created by mac on 22.10.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class LastScreenController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func LastButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}

//
//  BaseProductsViewController.swift
//  SOLID
//
//  Created by Gustavo Rocha on 03/06/21.
//

import UIKit

class BaseProductsViewController: UIViewController {
    
    //Liskov

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupNavBar(){
        navigationController?.navigationBar.barTintColor = .red
    }

}

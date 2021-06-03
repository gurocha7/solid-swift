//
//  ViewController.swift
//  SOLID
//
//  Created by Gustavo Rocha on 09/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonProducts: UIButton!
    @IBOutlet weak var buttonUs: UIButton!
    
    @IBAction func buttonProductsAction(_ sender: Any) {
        showProducts()
    }
    
    @IBAction func buttonUsAction(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideNav()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        hideNav()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        showNav()
    }
    
    private func hideNav(){
        navigationController?.navigationBar.isHidden = true
    }
    
    private func showNav(){
        navigationController?.navigationBar.isHidden = false
    }

    private func showProducts(){
        let controller = ProductsViewController(type: .iphone)
        self.navigationController?.pushViewController(controller, animated: true)
    }
}


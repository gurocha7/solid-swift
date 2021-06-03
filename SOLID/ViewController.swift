//
//  ViewController.swift
//  SOLID
//
//  Created by Gustavo Rocha on 09/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonIphone: UIButton!
    @IBOutlet weak var buttonMac: UIButton!
    
    @IBAction func buttonIphoneAction(_ sender: Any) {
        showIphoneProducts()
    }
    
    @IBAction func buttonMacAction(_ sender: Any) {
        showMacProducts()
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

    private func showIphoneProducts(){
        let controller = ProductsViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    private func showMacProducts(){
        let controller = MacProductsViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
}


//
//  ProductsViewController.swift
//  SOLID
//
//  Created by Gustavo Rocha on 09/05/21.
//

import UIKit

class ProductsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel: ProductsViewModel = ProductsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Products"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getNumberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.getItemAt(index: indexPath.row)
        return cell
    }

}

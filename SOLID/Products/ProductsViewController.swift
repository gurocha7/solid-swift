//
//  ProductsViewController.swift
//  SOLID
//
//  Created by Gustavo Rocha on 09/05/21.
//

import UIKit

class ProductsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TypeProducts {
    var type: TypeAppleProducts?
    
    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel: ProductsViewModel = ProductsViewModel()
    private var itemsCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        type = .iphone
        title = TypeAppleProducts.iphone.rawValue
        setupUI()
    }
    
    private func setupUI() {
        numberOfItems()
    }
    
    func numberOfItems() {
        itemsCount = viewModel.getNumberOfIphoneItems()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.getIphoneItemAt(index: indexPath.row)
        return cell
    }
}

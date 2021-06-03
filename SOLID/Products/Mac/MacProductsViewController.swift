//
//  MacProductsViewController.swift
//  SOLID
//
//  Created by Gustavo Rocha on 03/06/21.
//

import UIKit

class MacProductsViewController: BaseProductsViewController,
                                 UITableViewDelegate,
                                 UITableViewDataSource,
                                 TypeProducts,
                                 PriceProducts {
    
    var type: TypeAppleProducts?
    private var itemsCount: Int = 0
    
    private var viewModel: MacProductsViewModel = MacProductsViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        type = .mac
        title = TypeAppleProducts.mac.rawValue
        setupUI()
    }
    
    private func setupUI() {
        setupNavBar()
        numberOfItems()
    }
    
    override func setupNavBar() {
        navigationController?.navigationBar.barTintColor = .systemBlue
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    func numberOfItems() {
       itemsCount = viewModel.getNumberOfMacItems()
    }
    
    func hasDiscount() {
        //seta o disconto
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.getMacItemAt(index: indexPath.row)
        return cell
    }
    
    
}

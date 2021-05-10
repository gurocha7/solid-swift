//
//  ProductsViewModel.swift
//  SOLID
//
//  Created by Gustavo Rocha on 09/05/21.
//

import Foundation

class ProductsViewModel {
    
    private let items: [String] = ["Apple Watch SE",
                                    "Apple Watch series 6",
                                    "iPhone SE",
                                    "iPhone 11",
                                    "iPhone 11 Pro",
                                    "iPhone 12",
                                    "iPhone 11 Pro",
                                    "iPhone 11 Pro Max"]
    
    func getNumberOfItems() -> Int {
        return items.count
    }
    
    func getItemAt(index: Int) -> String{
        return items[index]
    }
    
}

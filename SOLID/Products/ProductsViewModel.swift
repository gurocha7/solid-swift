//
//  ProductsViewModel.swift
//  SOLID
//
//  Created by Gustavo Rocha on 09/05/21.
//

import Foundation

class ProductsViewModel {
    
    private var service: ProductsService = ProductsService()
    
    private let iphoneItems: [String] = ["iPhone SE",
                                    "iPhone 11",
                                    "iPhone 11 Pro",
                                    "iPhone 12",
                                    "iPhone 11 Pro",
                                    "iPhone 11 Pro Max"]
    
    func getNumberOfIphoneItems() -> Int {
        return iphoneItems.count
    }
    
    func getIphoneItemAt(index: Int) -> String{
        return iphoneItems[index]
    }
    
}

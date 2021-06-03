//
//  MacProductsViewModel.swift
//  SOLID
//
//  Created by Gustavo Rocha on 03/06/21.
//

import Foundation

class MacProductsViewModel {
    
    //Single Responsibility
    private var service: ProductsService = ProductsService()
    
    private let macItems: [String] = ["Macbook Air",
                                    "Macbook Pro 13'' ",
                                    "Macbook Pro 16'' ",
                                    "Mac Pro",
                                    "Mac mini",
                                    "iMac 24'' ",
                                    "iMac 27'' "]
    
    func getNumberOfMacItems() -> Int {
        return macItems.count
    }
    
    func getMacItemAt(index: Int) -> String{
        return macItems[index]
    }
    
}

//
//  BaseProductsViewController.swift
//  SOLID
//
//  Created by Gustavo Rocha on 03/06/21.
//

import UIKit

enum TypeAppleProducts: String {
    case iphone = "iPhone"
    case mac = "MacBook"
    case watch = "Apple Watch"
}

protocol TypeProducts {
    var type: TypeAppleProducts? {get set}
    
    func numberOfItems()
}

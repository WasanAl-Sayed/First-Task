//
//  ProductTypes.swift
//  FirstTask
//
//  Created by fts on 10/03/2024.
//

import UIKit

enum ProductTypes {
    case ipad
    case iphone
    case macbook
    
    var title: String {
        switch self {
        case .ipad:
            return Constant.ipad
        case .iphone:
            return Constant.iphone
        case .macbook:
            return Constant.macbook
        }
    }
    
    var image: UIImage {
        switch self {
        case .ipad:
            return UIImage.iPad
        case .iphone:
            return UIImage.iPhone15
        case .macbook:
            return UIImage.macBook
        }
    }
}

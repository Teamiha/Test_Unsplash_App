//
//  TabBarModel.swift
//  Test_Unsplash_App
//
//  Created by Михаил Светлов on 05.01.2023.
//

import Foundation
import UIKit

enum TabBarModel {
    case main
    case favorite

    var title: String {
        switch self {
        case .main:
            return "Main"
        case .favorite:
            return "Favorites"
        }
    }

    var image: UIImage? {
        switch self {
        case .main:
            return UIImage(systemName: "circle")
        case .favorite:
            return UIImage(systemName: "heart")
        }
    }

    var selectedImage: UIImage? {
        return image
    }
    
}

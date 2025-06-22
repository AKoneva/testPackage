//
//  UIColor+MaterialPalette.swift
//  MyTestPackage
//
//  Created by Анна Перехрест  on 2025/06/22.
//

import Foundation

#if canImport(UIKit)
import UIKit

public extension UIColor {
    static var materialBlue: UIColor {
        return UIColor(red: 33/255, green: 150/255, blue: 243/255, alpha: 1.0)
    }

    static var materialRed: UIColor {
        return UIColor(red: 244/255, green: 67/255, blue: 54/255, alpha: 1.0)
    }

    static var materialGreen: UIColor {
        return UIColor(red: 76/255, green: 175/255, blue: 80/255, alpha: 1.0)
    }
}
#endif

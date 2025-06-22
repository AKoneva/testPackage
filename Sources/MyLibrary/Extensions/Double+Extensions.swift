//
//  Double+Extensions.swift
//  MyTestPackage
//
//  Created by Анна Перехрест  on 2025/06/22.
//

import Foundation

public extension Double {

    /// Rounds the double to given decimal places
    func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }

    /// Returns a string with fixed decimal places (for UI display)
    func formatted(toPlaces places: Int) -> String {
        return String(format: "%.\(places)f", self)
    }

    /// Returns a currency-formatted string (default: current locale)
    func asCurrency(locale: Locale = .current) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = locale
        return formatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }

    /// Checks if value is a whole number (e.g. 5.0 is true, 5.1 is false)
    var isWholeNumber: Bool {
        return floor(self) == self
    }
}

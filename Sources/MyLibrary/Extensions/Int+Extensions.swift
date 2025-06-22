//
//  Int+Extensions.swift
//  MyTestPackage
//
//  Created by Анна Перехрест  on 2025/06/22.
//

import Foundation

public extension Int {

    /// Returns true if the integer is even
    var isEven: Bool {
        return self % 2 == 0
    }

    /// Returns true if the integer is odd
    var isOdd: Bool {
        return self % 2 != 0
    }

    /// Converts the integer to a formatted string with thousands separator
    var formattedWithSeparator: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }

    /// Repeats a closure `n` times
    func times(_ action: () -> Void) {
        guard self > 0 else { return }
        for _ in 0..<self {
            action()
        }
    }
}

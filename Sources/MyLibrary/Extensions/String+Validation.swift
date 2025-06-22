//
//  String+Validation.swift
//  MyTestPackage
//
//  Created by Анна Перехрест  on 2025/06/22.
//

import Foundation

public extension String {
    var isValidEmail: Bool {
        let pattern =
        "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        return NSPredicate(format: "SELF MATCHES %@", pattern).evaluate(with: self)
    }

    var isValidPhoneNumber: Bool {
        let pattern = "^\\d{10,15}$"
        return NSPredicate(format: "SELF MATCHES %@", pattern).evaluate(with: self)
    }

    var isNotEmpty: Bool {
        return !trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}

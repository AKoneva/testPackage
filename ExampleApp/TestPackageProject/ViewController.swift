//
//  ViewController.swift
//  TestPackageProject
//
//  Created by Анна Перехрест  on 2025/06/22.
//
import UIKit
import MyLibrary // Your Swift package

class ViewController: UIViewController {
    let emailField = UITextField()
    let emailResultLabel = UILabel()

    let intField = UITextField()
    let intResultLabel = UILabel()

    let doubleField = UITextField()
    let doubleResultLabel = UILabel()

    var isGreenBackground = false

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.materialBlue

        let spacing: CGFloat = 50
        let fieldWidth = view.bounds.width - 80
        var y: CGFloat = 60

        // Title
        let titleLabel = UILabel()
        titleLabel.text = "🧪 MyLibrary Validator"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.frame = CGRect(x: 20, y: y, width: view.bounds.width - 40, height: 30)
        view.addSubview(titleLabel)
        y += spacing

        // Email Field
        emailField.placeholder = "Enter email or phone"
        emailField.borderStyle = .roundedRect
        emailField.backgroundColor = .white
        emailField.frame = CGRect(x: 40, y: y, width: fieldWidth, height: 40)
        view.addSubview(emailField)
        y += 45

        // Email Result
        emailResultLabel.textColor = .white
        emailResultLabel.font = .systemFont(ofSize: 16)
        emailResultLabel.frame = CGRect(x: 40, y: y, width: fieldWidth, height: 30)
        view.addSubview(emailResultLabel)
        y += spacing

        // Int Field
        intField.placeholder = "Enter an integer (or leave empty)"
        intField.borderStyle = .roundedRect
        intField.keyboardType = .numberPad
        intField.backgroundColor = .white
        intField.frame = CGRect(x: 40, y: y, width: fieldWidth, height: 40)
        view.addSubview(intField)
        y += 45

        // Int Result
        intResultLabel.textColor = .white
        intResultLabel.font = .systemFont(ofSize: 14)
        intResultLabel.numberOfLines = 0
        intResultLabel.frame = CGRect(x: 40, y: y, width: fieldWidth, height: 60)
        view.addSubview(intResultLabel)
        y += 70

        // Double Field
        doubleField.placeholder = "Enter a decimal (or leave empty)"
        doubleField.borderStyle = .roundedRect
        doubleField.keyboardType = .decimalPad
        doubleField.backgroundColor = .white
        doubleField.frame = CGRect(x: 40, y: y, width: fieldWidth, height: 40)
        view.addSubview(doubleField)
        y += 45

        // Double Result
        doubleResultLabel.textColor = .white
        doubleResultLabel.font = .systemFont(ofSize: 14)
        doubleResultLabel.numberOfLines = 0
        doubleResultLabel.frame = CGRect(x: 40, y: y, width: fieldWidth, height: 90)
        view.addSubview(doubleResultLabel)
        y += 100

        // Validate Button
        let validateButton = UIButton(type: .system)
        validateButton.setTitle("✅ Validate All", for: .normal)
        validateButton.backgroundColor = UIColor.materialRed
        validateButton.setTitleColor(.white, for: .normal)
        validateButton.layer.cornerRadius = 10
        validateButton.frame = CGRect(x: 100, y: y, width: 200, height: 50)
        validateButton.center.x = view.center.x
        validateButton.addTarget(self, action: #selector(validateTapped), for: .touchUpInside)
        view.addSubview(validateButton)
        y += 60

        // Background Color Button
        let colorButton = UIButton(type: .system)
        colorButton.setTitle("🎨 Change Background", for: .normal)
        colorButton.backgroundColor = UIColor.materialGreen
        colorButton.setTitleColor(.white, for: .normal)
        colorButton.layer.cornerRadius = 10
        colorButton.frame = CGRect(x: 100, y: y, width: 200, height: 50)
        colorButton.center.x = view.center.x
        colorButton.addTarget(self, action: #selector(changeBackground), for: .touchUpInside)
        view.addSubview(colorButton)
    }

    @objc func validateTapped() {
        // 📩 String validation
        let text = emailField.text ?? ""
        if text.isValidEmail {
            emailResultLabel.text = "✅ Valid Email"
        } else if text.isValidPhoneNumber {
            emailResultLabel.text = "✅ Valid Phone Number"
        } else if text.isNotEmpty {
            emailResultLabel.text = "❌ Invalid Input"
        } else {
            emailResultLabel.text = "⚠️ Empty Input"
        }

        // 🔢 Int validation
        let intValue = Int(intField.text ?? "") ?? 9999
        intResultLabel.text = """
        Int: \(intValue)
        • Even: \(intValue.isEven)
        • Odd: \(intValue.isOdd)
        • Formatted: \(intValue.formattedWithSeparator)
        """

        // 🔣 Double validation
        let doubleValue = Double(doubleField.text ?? "") ?? 1234.56789
        doubleResultLabel.text = """
        Double: \(doubleValue)
        • Rounded (2): \(doubleValue.rounded(toPlaces: 2))
        • Formatted (3): \(doubleValue.formatted(toPlaces: 3))
        • Currency: \(doubleValue.asCurrency())
        • Whole: \(doubleValue.isWholeNumber)
        """
    }

    @objc func changeBackground() {
        isGreenBackground.toggle()
        view.backgroundColor = isGreenBackground ? UIColor.materialGreen : UIColor.materialBlue
    }
}

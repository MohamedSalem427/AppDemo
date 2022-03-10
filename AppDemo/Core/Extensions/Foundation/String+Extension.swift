//
//  String+Extension.swift
//  Shift
//
//  Created by ziad on 4/1/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import UIKit

extension String {

    var double: Double? {
        Double(self)
    }
    var int: Int? {
        Int(self)
    }

    static func generateRandomDigits(_ length: Int) -> String {
        var number = ""
        for i in 0..<length {
            var randomNumber = arc4random_uniform(10)
            while randomNumber == 0 && i == 0 {
                randomNumber = arc4random_uniform(10)
            }
            number += "\(randomNumber)"
        }
        return number
    }

}

extension String {
    var isNumber: Bool {
        get {
            !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
        }
    }

    var english: String {
        applyingTransform(StringTransform.toLatin, reverse: false) ?? self
    }

    var digits: [Int] {
        self.compactMap {
            $0.wholeNumberValue
        }
    }

    var caseNumericEnglishOnly: String {
        if isNumber {
            return english
        }
        return self
    }

}

extension String {
    static var deviceId: String {
        UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
}

extension String {
    var trim: String {
        trimmingCharacters(in: CharacterSet.whitespaces)
    }

    var dropWhitSpaces: String {
        replacingOccurrences(of: " ", with: "")
    }

    func range(from nsRange: NSRange) -> Range<String.Index>? {
        guard
                let from16 = utf16.index(utf16.startIndex, offsetBy: nsRange.location, limitedBy: utf16.endIndex),
                let to16 = utf16.index(from16, offsetBy: nsRange.length, limitedBy: utf16.endIndex),
                let from = String.Index(from16, within: self),
                let to = String.Index(to16, within: self)
                else {
            return nil
        }
        return from..<to
    }
}


extension Double {
    var string: String {
        description
    }

    var int: Int {
        Int(self)
    }

    func roundTo(_ places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return Darwin.round(self * divisor) / divisor
    }
}

extension Int {
    var string: String {
        description
    }
}

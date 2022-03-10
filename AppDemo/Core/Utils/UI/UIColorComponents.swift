//
//  UIColorComponents.swift
//  Shift
//
//  Created by ziad on 3/30/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import UIKit

extension UIColor {

    private enum Color: String {
        case soap
        case gunPowder
        case titaniumYellow
        case midnightBlue
        case zambezi
        case lightBlue
        case lightCloudyBlueTwo
        case blueGray
        case dodgerBlue
        case darkIndigo
        case silver
        case sunflowerYellow
        case shipCove
        case paleGrey
        case cloudBlue
        case maize
        case paleGreyTwo
        case lightNavy
        case lightGrey
        case lightGrey2
        case steelGrey
        case cloudyBlueTwo
        case fadedBlue
        case warmGrey
        case steel
        case brownishGrey
        case paleGreyThree
        case offWhite
        case darkRed
        case darkRed2
        case darkRed3
        case darkRed4

        var name: String {
            rawValue
        }
    }

    private class func colorType(_ type: Color) -> UIColor {

        return UIColor(named: type.name) ?? .white
    }

    static var soap: UIColor {
        .colorType(.soap)
    }
    static var gunPowder: UIColor {
        .colorType(.gunPowder)
    }
    static var titaniumYellow: UIColor {
        .colorType(.titaniumYellow)
    }
    static var midnightBlue: UIColor {
        .colorType(.midnightBlue)
    }
    static var zambezi: UIColor {
        .colorType(.zambezi)
    }
    static var lightBlue: UIColor {
        .colorType(.lightBlue)
    }
    static var lightCloudyBlueTwo: UIColor {
        colorType(.lightCloudyBlueTwo)
    }
    static var dodgerBlue: UIColor {
        .colorType(.dodgerBlue)
    }
    static var darkIndigo: UIColor {
        .colorType(.darkIndigo)
    }
    static var silver: UIColor {
        .colorType(.silver)
    }
    static var sunflowerYellow: UIColor {
        .colorType(.sunflowerYellow)
    }
    static var white75: UIColor {
        UIColor(white: 232 / 255, alpha: 0.75)
    }
    static var shipCove: UIColor {
        .colorType(.shipCove)
    }
    static var paleGrey: UIColor {
        .colorType(.paleGrey)
    }
    static var cloudBlue: UIColor {
        .colorType(.cloudBlue)
    }
    static var maize: UIColor {
        .colorType(.maize)
    }
    static var paleGreyTwo: UIColor {
        .colorType(.paleGreyTwo)
    }
    static var blueGray: UIColor {
        .colorType(.blueGray)
    }
    static var lightNavy: UIColor {
        .colorType(.lightNavy)
    }
    static var lightGrey: UIColor {
        .colorType(.lightGrey)
    }
    static var lightGrey2: UIColor {
        .colorType(.lightGrey2)
    }
    static var steelGrey: UIColor {
        .colorType(.steelGrey)
    }
    static var cloudyBlueTwo: UIColor {
        .colorType(.cloudyBlueTwo)
    }
    static var fadedBlue: UIColor {
        .colorType(.fadedBlue)
    }
    static var warmGrey: UIColor {
        .colorType(.warmGrey)
    }
    static var steel: UIColor {
        .colorType(.steel)
    }
    static var brownishGrey: UIColor {
        .colorType(.brownishGrey)
    }
    static var paleGreyThree: UIColor {
        .colorType(.paleGreyThree)
    }
    static var offWhite: UIColor {
        .colorType(.offWhite)
    }
    static var darkRed: UIColor {
        .colorType(.darkRed)
    }
    static var darkRed2: UIColor {
        .colorType(.darkRed2)
    }
    static var darkRed3: UIColor {
        .colorType(.darkRed3)
    }
    static var darkRed4: UIColor {
        .colorType(.darkRed4)
    }
}


import SwiftUI

extension Color {
    static var sunflowerYellow: Color {
        Color(.sunflowerYellow)
    }
    static var silver: Color {
        Color(.silver)
    }
    static var darkIndigo: Color {
        Color(.darkIndigo)
    }
    static var lightBlue: Color {
        Color(.lightBlue)
    }
    static var lightCloudyBlueTwo: Color {
        Color(.lightCloudyBlueTwo)
    }
    static var white75: Color {
        Color(.white75)
    }
    static var shipCove: Color {
        Color(.shipCove)
    }
    static var paleGrey: Color {
        Color(.paleGrey)
    }
    static var cloudBlue: Color {
        Color(.cloudBlue)
    }
    static var maize: Color {
        Color(.maize)
    }
    static var paleGreyTwo: Color {
        Color(.paleGreyTwo)
    }
    static var blueGray: Color {
        Color(.blueGray)
    }
    static var lightNavy: Color {
        Color(.lightNavy)
    }
    static var lightGrey: Color {
        Color(.lightGrey)
    }
    static var lightGrey2: Color {
        Color(.lightGrey2)
    }
    static var steelGrey: Color {
        Color(.steelGrey)
    }
    static var cloudyBlueTwo: Color {
        Color(.cloudyBlueTwo)
    }
    static var fadedBlue: Color {
        Color(.fadedBlue)
    }
    static var warmGrey: Color {
        Color(.warmGrey)
    }
    static var steel: Color {
        Color(.steel)
    }
    static var brownishGrey: Color {
        Color(.brownishGrey)
    }
    static var paleGreyThree: Color {
        Color(.paleGreyThree)
    }
    static var offWhite: Color {
        Color(.offWhite)
    }
    static var darkRed: Color {
        Color(.darkRed)
    }
    static var darkRed2: Color {
        Color(.darkRed2)
    }
    static var darkRed3: Color {
        Color(.darkRed3)
    }
    static var darkRed4: Color {
        Color(.darkRed4)
    }
}

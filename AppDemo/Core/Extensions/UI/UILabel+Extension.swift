//
//  UILabel+Extension.swift
//  Shift
//
//  Created by ziad on 4/6/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import UIKit

@IBDesignable
extension UILabel {
    
    @IBInspectable public var underlined: Bool {
        set {
            guard newValue else {return}
            let underlineAttributedString = NSAttributedString(string: self.text ?? "", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
            self.attributedText = underlineAttributedString
        }
        
        get {
            return false
        }
    }

}

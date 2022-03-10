//
//  IQKeyboardWrapper.swift
//  Shift
//
//  Created by ziad on 4/2/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import IQKeyboardManagerSwift
import SwiftUI

// TODO: should be moved to App module
public class KeyboardWrapper {

    public class func handleKeyboardAppearance() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.keyboardDistanceFromTextField = 10
    }
}

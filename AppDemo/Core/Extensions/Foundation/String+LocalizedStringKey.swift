//
//  String+LocalizedStringKey.swift
//  Shift
//
//  Created by Salem on 07/08/2021.
//  Copyright © 2021 generation-c. All rights reserved.
//

import SwiftUI

extension LocalizedStringKey {
    var stringKey: String {
        let description = "\(self)"

        let components = description.components(separatedBy: "key: \"")
            .map { $0.components(separatedBy: "\",") }

        return components[1][0]
    }
}


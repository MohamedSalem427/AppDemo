//
//  EnvironmentState.swift
//  Shift
//
//  Created by ziad on 10/15/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import SwiftUI
extension View {
    func environmetState() -> some View {
        return self
            .environment(\.sizeCategory, .large)
    }
}

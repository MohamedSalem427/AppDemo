//
// Created by Shaban on 02/08/2021.
// Copyright (c) 2021 generation-c. All rights reserved.
//

import SwiftUI


public protocol AppScreen: View {
    associatedtype Content: View
    @ViewBuilder var bodyContent: Content { get }
}


//
//  CenteringView.swift
//  Shift
//
//  Created by ziad on 9/6/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import SwiftUI

struct CenteringViewPreferenceKey: PreferenceKey {
    
    typealias Value = [CenteringViewPreference]
    
    static var defaultValue: Value = []
    
    static func reduce(value: inout [CenteringViewPreference], nextValue: () -> [CenteringViewPreference]) {
        value.append(contentsOf: nextValue())
    }
    
}

struct CenteringViewPreference: Equatable {
    let width: CGFloat
}

struct CenteringView: View {
    
    var body: some View {
        GeometryReader { gr in
            Rectangle().fill(Color.clear)
                .preference(key: CenteringViewPreferenceKey.self, value: [CenteringViewPreference(width: gr.frame(in: .global).width)])
        }
    }
    
}

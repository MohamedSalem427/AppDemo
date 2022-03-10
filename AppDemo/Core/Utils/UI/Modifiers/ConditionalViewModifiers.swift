//
//  ConditionalViewModifiers.swift
//  Shift
//
//  Created by ziad on 9/5/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import SwiftUI

extension View {
    
    @ViewBuilder func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
    
    @ViewBuilder func `if`<TrueContent: View, FalseContent: View>(_ condition: Bool, do ifTransform: (Self) -> TrueContent, else elseTransform: (Self) -> FalseContent ) -> some View {
        if condition {
            ifTransform(self)
        } else {
            elseTransform(self)
        }
    }
    
    @ViewBuilder func ifLet<V, Transform: View>(_ value: V?, transform: (Self, V) -> Transform) -> some View {
        if let value = value {
            transform(self, value)
        } else {
            self
        }
    }
    
    @ViewBuilder func minimumScaleFactor(factor: CGFloat) -> some View {
        if #available(iOS 14, *) {
            minimumScaleFactor(factor)
        } else {
            minimumScaleFactor(0.90)
        }
    }
    
    @available(iOS, introduced: 13, deprecated: 14, message: "Use .ignoresSafeArea(.keyboard)")
    @ViewBuilder func ignoreKeyboard() -> some View {
        if #available(iOS 14.0, *) {
            ignoresSafeArea(.keyboard)
        } else {
            self // iOS 13 always ignores the keyboard
        }
    }
    
}

extension List {
    
    @available(iOS, introduced: 13, deprecated: 14, message: "Use .listStyle(InsetGroupedListStyle())")

    @ViewBuilder func insetGroupedListStyle() -> some View {
        if #available(iOS 14.0, *) {
            self
                .listStyle(InsetGroupedListStyle())
        } else {
            self
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
        }
    }
}

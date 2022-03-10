//
//  HiddenModifier.swift
//  Shift
//
//  Created by ziad on 8/3/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import SwiftUI

extension View {
    func isHidden(hidden: Bool = false, remove: Bool = false) -> some View {
        modifier(HiddenModifier(isHidden: hidden, remove: remove))
    }
}


fileprivate struct HiddenModifier: ViewModifier {

    private let isHidden: Bool
    private let remove: Bool

    init(isHidden: Bool = false, remove: Bool = false) {
        self.isHidden = isHidden
        self.remove = remove
    }

    func body(content: Content) -> some View {
        Group {
            if isHidden {
                content.hidden()
            } else if remove {
                
            } else {
                content
            }
        }
    }
}

extension UIView {
    func subview<T>(of type: T.Type) -> T? {
        subviews.compactMap {
            $0 as? T ?? $0.subview(of: type)
        }.first
    }
}

extension View {
    var controller: UIViewController? { UIApplication.shared.topController }
}

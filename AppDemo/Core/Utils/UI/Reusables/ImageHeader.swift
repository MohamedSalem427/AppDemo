//
//  ImageHeader.swift
//  Shift
//
//  Created by ziad on 8/15/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import SwiftUI

struct ImageHeader: View {
    let rectangleWidth: CGFloat = 7
    var name: String = ""
    var distance: CGFloat = 109
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.clear)
                .frame(width: rectangleWidth)
                .edgesIgnoringSafeArea(.top)
            VStack {
                Spacer()
                    .frame(height: distance)
                HStack(alignment: .bottom) {
                    Spacer()
                    if name.isEmpty {
                        EmptyView()
                    } else {
                        Image(name)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

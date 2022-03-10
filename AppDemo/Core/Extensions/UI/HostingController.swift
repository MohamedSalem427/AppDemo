//
//  HostingController.swift
//  Shift
//
//  Created by ziad on 8/21/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import SwiftUI

class HostingController<Content> : UIHostingController<Content> where Content : View {
    override var preferredStatusBarStyle: UIStatusBarStyle {
           .lightContent
       }
}

//
//  SOAPTargetType.swift
//  Shift
//
//  Created by ziad on 6/2/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

enum SOAPMethod: String {
    case post = "POST"
}

protocol SOAPTargetType {
    var baseURL: URL { get }
    var path: String { get }
    var method: SOAPMethod { get }
    var message: String { get }
    var headers: [String: String]? { get }
}

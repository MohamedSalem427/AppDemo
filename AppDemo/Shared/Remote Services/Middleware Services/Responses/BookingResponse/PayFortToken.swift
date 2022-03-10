//
//  PayFortToken.swift
//  Shift
//
//  Created by ziad on 5/4/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

final class PayFortToken: Codable {
    
    var deviceId: String?
    var language: String?
    var sdkToken: String?
    
    enum CodingKeys: String, CodingKey {
        case deviceId = "device_id"
        case language = "language"
        case sdkToken = "sdk_token"
    }
    
}

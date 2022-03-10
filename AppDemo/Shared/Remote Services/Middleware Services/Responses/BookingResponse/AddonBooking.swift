//
//  Addon.swift
//  Shift
//
//  Created by ziad on 3/31/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

final class AddonBooking: Codable {
    
    var amount: Double?
    var code: String?
    var description: String?
    
    enum CodingKeys: String, CodingKey {
        
        case amount = "amount"
        case code = "code"
        case description = "description"
    }
}


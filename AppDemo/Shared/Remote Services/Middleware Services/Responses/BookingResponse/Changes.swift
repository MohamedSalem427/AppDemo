//
//  Changes.swift
//  Shift
//
//  Created by ziad on 3/31/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

final class Charge: Codable {
    
    var amount: Double?
    var chargeDesc: String?
    
    enum CodingKeys: String, CodingKey {
        case amount = "amount"
        case chargeDesc = "charge_desc"
    }
    
}

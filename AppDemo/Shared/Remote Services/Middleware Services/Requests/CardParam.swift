//
//  CardParam.swift
//  Shift
//
//  Created by ziad on 10/5/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

struct CardParam: Encodable {
    
    var cardType: String?
    var cardNo: String?
    var cardHolderName: String?
    var authNo: String?
    var cardToken: String?
    var customerIp: String?
    var expiryDate: String?
        
    enum CodingKeys: String, CodingKey {
        case cardType = "card_type"
        case cardNo = "card_no"
        case cardHolderName = "card_holder_name"
        case authNo = "auth_no"
        case cardToken = "card_token"
        case customerIp = "customer_ip"
        case expiryDate = "expiry_date"
    }
}

//
//  RescheduleSEQ.swift
//  Shift
//
//  Created by ziad on 6/15/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

class RescheduleResponse: Codable {
    var seqNo: Int?
    var bookingBalance: Double?
    var message: String = ""
    
    enum CodingKeys: String, CodingKey {
        case seqNo = "seq_no"
        case bookingBalance = "booking_balance"
    }
}

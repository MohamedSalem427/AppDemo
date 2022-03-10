//
//  KeychainService.swift
//  Chauffer Client Demo
//
//  Created by ziad on 3/9/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

extension Keychain {
    
    public enum KeychainKeys: String {
        // Authentication
        case userToken
        case UserTokenType
        case UserRefreshToken
        
        case paymentDetails
    }
}


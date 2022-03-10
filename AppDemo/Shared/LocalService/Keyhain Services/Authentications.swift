//
//  Authontications.swift
//  Chauffer Client Demo
//
//  Created by ziad on 3/10/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

protocol AuthonticationsProtocol {
    var isUserLoggedIn: Bool { get }
    var fetchToken: String { get }
}

class Authentications: AuthonticationsProtocol, ObservableObject {
    
    let secureCash: Keychain
    @Published var isUserLoggedIn: Bool
    
    init(secureCash: Keychain) {
        self.secureCash = secureCash
        isUserLoggedIn = secureCash[.userToken] != nil ? true : false
    }
    
    static var shared : Authentications {
        return Authentications(secureCash: Keychain())
    }
    var fetchToken: String {
        return secureCash[.userToken] ?? ""
    }
}

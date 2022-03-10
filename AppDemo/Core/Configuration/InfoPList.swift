//
//  InfoPList.swift
//  Shift
//
//  Created by ziad on 4/8/20.
//  Copyright © 2020 generation-c. All rights reserved.
import Foundation
protocol InfoPListProtocol {
    func get(_ key: InfoPListKeys) -> Any?
    var getAppVersion: String? {get}
    var getShortVersion: String? {get}
}

class InfoPList: InfoPListProtocol {
    
    class var shared: InfoPList {
        return InfoPList()
    }
    
    func get(_ key: InfoPListKeys) -> Any?  {
        return Bundle.main.infoDictionary?[key.rawValue]
    }
    
    var getAppVersion: String? {
        return get(.appVersion) as? String
    }
    
    var getShortVersion: String? {
        return get(.appShortVersion) as? String
    }
    
}

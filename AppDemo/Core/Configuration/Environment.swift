//
//  Environment.swift
//  Shift
//
//  Created by ziad on 3/28/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

enum Environment: String {
    
    case production
    case sandbox
    case develop
    
    
    private static var environmentConfig:(_ key: InfoPListKeys.EnvironmentKeys) -> String = {
        let dic: NSDictionary? = InfoPList.shared.get(.environmentConfig) as? NSDictionary
        return dic?[$0.rawValue] as? String ?? ""
    }
    
    static var baseURL: URL {
        URL(string: environmentConfig(.apiBaseURL))!
    }
    
    static var crashReportKey: String {
        environmentConfig(.crashReportKey)
    }
    
    static var mediaURLString: String {
        environmentConfig(.mediaURL)
    }
    
    static var googleMapsKey: String {
        return environmentConfig(.googleMapsKey)
    }
    
    static var apiKey: String {
        return "gmZeKYE7q1sk5UPSAzCV"
    }
    
    static var type: Environment? {
        let configuration = environmentConfig(.configuration).lowercased()
        return Environment(rawValue: configuration)
    }
    
   static var typeName: String? {
        return environmentConfig(.configuration)
    }
    
}

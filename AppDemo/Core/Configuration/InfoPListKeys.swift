//
//  InfoPListKeys.swift
//  Shift
//
//  Created by ziad on 3/28/20.
//  Copyright © 2020 generation-c. All rights reserved.

import Foundation

enum InfoPListKeys: String {
    
    case appVersion = "CFBundleVersion"
    case appShortVersion = "CFBundleShortVersionString"
    case environmentConfig = "Environment configuration"
    
    enum EnvironmentKeys: String {
        case apiBaseURL = "API_BASE_URL"
        case mediaURL = "MEDIA_URL"
        case googleMapsKey = "GOOGLE_MAPS_KEY"
        case configuration = "Configuration"
        case crashReportKey = "CRASH_REPORT_KEY"
        case FAQLink = "FAQ_LINK"
    }
}

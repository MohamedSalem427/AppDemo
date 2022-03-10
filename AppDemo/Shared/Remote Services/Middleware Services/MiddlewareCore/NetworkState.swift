//
//  NetworkState.swift
//  Shift
//
//  Created by ziad on 3/26/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Alamofire

class NetworkState {

    class var isConnected: Bool {
        return NetworkReachabilityManager(host: "www.google.com")!.isReachable
    }
    
    class var isCellular: Bool {
        return NetworkReachabilityManager(host: "www.google.com")!.isReachableOnCellular
    }

}

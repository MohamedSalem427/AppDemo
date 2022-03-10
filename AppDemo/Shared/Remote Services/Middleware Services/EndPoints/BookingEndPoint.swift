//
//  bookingEndPoint.swift
//  Shift
//
//  Created by ziad on 5/1/20.
//  Copyright © 2020 generation-c. All rights reserved.
//
import Foundation
import Moya

enum BookingEndPoint {
    case cancelBooking(bookingRef:String)
    case reviewBooking(bookingRef:String,
                       rate: Int,
                       feedback: String?)
    
}

//MARK: - TargetType & AccessTokenAuthorizable
extension BookingEndPoint: TargetType, AccessTokenAuthorizable {
    var baseURL: URL { Environment.baseURL }
    
    var path: String {
        switch self {
        case .cancelBooking: return "bookings/cancel"
        case .reviewBooking: return "review/submit"
            
        }
    }
    
    var method: Moya.Method {
        return .post
    }
    
    var sampleData: Data { Data() }
    
    var parameters: [String:Any] {
        switch self {
        case let .cancelBooking(bookingRef):
            return ["booking_ref":bookingRef]
        case let .reviewBooking(bookingRef, rate, feedback):
            return ["booking_ref":bookingRef,
                    "rate":rate,
                    "feedback": feedback ?? ""]
        }
    }
    
    var task: Task {
        return .requestParameters(parameters: parameters, encoding: JSONEncoding.default)
    }
    
    var headers: [String : String]? {
        [HTTPHeaderField.contentType.rawValue : ContentType.json.rawValue,
         HTTPHeaderField.acceptType.rawValue : ContentType.applicationJson.rawValue]
    }
    
    var authorizationType: AuthorizationType? { .bearer }
    
}


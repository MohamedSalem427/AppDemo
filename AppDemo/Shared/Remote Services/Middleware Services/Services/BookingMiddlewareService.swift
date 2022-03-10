//
//  BookingMiddlewareService.swift
//  Shift
//
//  Created by ziad on 5/1/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation
import Combine

protocol BookingMiddlewareProtocol {
    func cancelBooking(bookingRef: String) -> AnyPublisher<BaseResponse<Null>,MiddlewareError>
    func reviewBooking(bookingRef: String, rate: Int, feedback: String?) -> AnyPublisher<BaseResponse<Null>,MiddlewareError>
}

class BookingMiddlewareService: MiddlewareService<BookingEndPoint>, BookingMiddlewareProtocol {
    func cancelBooking(bookingRef: String) -> AnyPublisher<BaseResponse<Null>,MiddlewareError> {
        return request(target: .cancelBooking(bookingRef: bookingRef))
    }
    func reviewBooking(bookingRef: String, rate: Int, feedback: String?) -> AnyPublisher<BaseResponse<Null>,MiddlewareError> {
        return request(target: .reviewBooking(bookingRef: bookingRef, rate: rate, feedback: feedback))
    }
}

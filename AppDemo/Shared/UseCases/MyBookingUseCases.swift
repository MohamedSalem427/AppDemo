//
//  MyBookingUseCases.swift
//  Shift
//
//  Created by ziad on 5/19/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation
import Combine

protocol MyBookingUseCasesProtocol {
    func cancelBooking(bookingRef: String) -> AnyPublisher<Void,MiddlewareError>
}

struct MyBookingUseCases: MyBookingUseCasesProtocol {
    //MARK: - Attibutes
    let middleware: BookingMiddlewareProtocol
    //MARK: - Init
    init(middleware: BookingMiddlewareProtocol = BookingMiddlewareService()) {
        self.middleware = middleware
    }
    
    // MARK: - Methods
    func cancelBooking(bookingRef: String) -> AnyPublisher<Void,MiddlewareError> {
        return middleware.cancelBooking(bookingRef: bookingRef).flatMap { response -> AnyPublisher<Void, MiddlewareError>  in
            return Deferred {
                return Future { promise in
                    switch response.statusCode {
                    case .ok:
                        promise(.success(()))
                    default:
                        promise(.failure(.unknown(message: response.message)))
                    }
                }
            }.eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }
}


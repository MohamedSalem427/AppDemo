//
//  Encodable+Dictionary.swift
//  Shift
//
//  Created by ziad on 4/16/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

extension Encodable {
    
  func asDictionary() -> [String: Any] {
   
    guard let data = try? JSONEncoder().encode(self), let dictionary = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
        return [:]
    }
    return dictionary
  }
}

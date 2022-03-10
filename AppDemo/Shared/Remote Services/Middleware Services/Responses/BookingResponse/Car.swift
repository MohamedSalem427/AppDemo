//
//  Car.swift
//  Shift
//
//  Created by ziad on 5/19/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

public struct Car: Codable {
    public var model: String?
    public var type: Int?
    public var brand: Int?
    public var dailyPrice: Double?
    public var rentalPrice: Double?
    public var assetNumber: String?
    public var dropoffLocation: Int?
    public var dropoffLocationDesc: String?
    public var dropoffDate: String?
    public var brandDesc: String?
    public var typeDesc: String?
    public var color: String?
    public var plateNumber: String?
    public var imeiNumber: String?
    public var deviceType: String?
    public var licenseFileUrl: String?
    public var insuranceFileUrl: String?
    // TODO: analytics, make sure this value is returned from the server
    public var categoryDesc: String?

    enum CodingKeys: String, CodingKey {
        case model = "model"
        case type = "type"
        case brand = "brand"
        case dailyPrice = "daily_price"
        case rentalPrice = "rental_price"
        case assetNumber = "asset_number"
        case dropoffLocation = "dropoff_location"
        case dropoffLocationDesc = "dropoff_location_desc"
        case dropoffDate = "dropoff_date"
        case brandDesc = "brand_desc"
        case typeDesc = "type_desc"
        case color = "color"
        case plateNumber = "plate_number"
        case imeiNumber = "imei_number"
        case deviceType = "device_type"
        case licenseFileUrl = "license_file_url"
        case insuranceFileUrl = "insurance_file_url"
        case categoryDesc = "category_desc"
    }
}

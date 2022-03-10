//
//  Contract.swift
//  Shift
//
//  Created by ziad on 3/31/20.
//  Copyright © 2020 generation-c. All rights reserved.
//

import Foundation

final class Contract: Codable {
    var contractNo: String?
    var contractStatus: ContractStatus?
    var contractUnits: Int?
    var contractUnitsType: String?
    var contractUnitsDesc: String?
    var contractAppliesFrom: String?
    var contractAppliesTo: String?
    var cdw: String?
    var customerName: String?
    var contractOpeningBranch: Int?
    var contractOpeningBranchDesc: String?
    var contractClosingBranch: Int?
    var contractClosingBranchDesc: String?
    var openedByStaff: Int?
    var pricingBase: String?
    var charges: [Charge]?
    var paidAmount: Double?
    var contractBalance: Double?
    var dropoffLocation: Int?
    var accountCode: String?
    var cdwCharge: Double?
    var rentalCharge: Double?
    var damageCharge: Double?
    var contractPdfPath: String?
    
    enum CodingKeys: String, CodingKey {
        
        case contractNo = "contract_no"
        case contractStatus = "contract_status"
        case contractUnits = "contract_units"
        case contractUnitsType = "contract_units_type"
        case contractUnitsDesc = "contract_units_desc"
        case contractAppliesFrom = "contract_applies_from"
        case contractAppliesTo = "contract_applies_to"
        case cdw = "cdw"
        case customerName = "customer_name"
        case contractOpeningBranch = "contract_opening_branch"
        case contractOpeningBranchDesc = "contract_opening_branch_desc"
        case contractClosingBranch = "contract_closing_branch"
        case contractClosingBranchDesc = "contract_closing_branch_desc"
        case openedByStaff = "opened_by_staff"
        case pricingBase = "pricing_base"
        case charges = "charges"
        case paidAmount = "paid_amount"
        case contractBalance = "contract_balance"
        case dropoffLocation = "dropoff_location"
        case accountCode = "account_code"
        case cdwCharge = "cdw_charge"
        case rentalCharge = "rental_charge"
        case damageCharge = "damage_charge"
        case contractPdfPath = "contract_pdf_url"
    }
    
}

enum ContractStatus: String, Codable {
    case closed = "C"
    case opned = "O"
    case hold = "H"
}

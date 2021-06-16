//
//  String+Localizable.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import Foundation

public extension String {
    
    var localizable: String {
        return NSLocalizedString(self, value: "**\(self)**", comment: "")
    }
    
}

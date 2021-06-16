//
//  Injections.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import Foundation

class Injections {
    
    static let shared: Injections = Injections()
    let apiManager: APIManager = APIManager(baseURL: APIConstants.base_url.value)
    
}

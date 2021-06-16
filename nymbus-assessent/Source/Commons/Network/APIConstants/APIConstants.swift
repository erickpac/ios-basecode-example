//
//  APIConstants.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import Foundation

enum APIConstants: String {
    case base_url = "https://api.github.com/orgs/square/"
    case repos = "repos"
    
    var value: String {
        return self.rawValue
    }
}

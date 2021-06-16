//
//  RepoOwner.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

struct RepoOwner: Codable {
    
    var name: String?
    var avatarURL: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "login"
        case avatarURL = "avatar_url"
    }
    
}

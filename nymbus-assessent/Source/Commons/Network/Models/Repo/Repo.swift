//
//  Repo.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

struct Repo: Codable {
    
    var name: String?
    var fullName: String
    var descriptionText: String?
    var isPrivate: Bool?
    var stars: Int
    var owner: RepoOwner?
    
    enum CodingKeys: String, CodingKey {
        case name
        case fullName = "full_name"
        case descriptionText = "description"
        case isPrivate = "private"
        case stars = "stargazers_count"
        case owner
    }
    
}

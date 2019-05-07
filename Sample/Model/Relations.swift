//
//  Relations.swift
//  Sample
//
//  Created by Vijith T.V on 06/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import Foundation
import Alamofire

struct Relations: Codable {
    
    var userId: String
    var firstName: String
    var email: String
    var countryCode: String
    var phoneNumber: String
    var imageUrl: String
    var relation: String
    var closeType: String
    var requestType: String
    var isFriend: Bool
    var mutalConnections: Int
    
    
    enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case firstName = "firstName"
        case email = "email"
        case countryCode = "countryCode"
        case phoneNumber = "phoneNumber"
        case imageUrl = "imageUrl"
        case relation = "relation"
        case closeType = "closeType"
        case requestType = "requestType"
        case isFriend = "isFriend"
        case mutalConnections = "mutalConnections"
    }
    
}

extension Relations {
    
}

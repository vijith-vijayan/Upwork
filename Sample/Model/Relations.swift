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
    
    init(relation: responseJSON) {
        
        self.userId = relation["userId"].stringValue
        self.firstName = relation["firstName"].stringValue
        self.email = relation["email"].stringValue
        self.countryCode = relation["countryCode"].stringValue
        self.phoneNumber = relation["phoneNumber"].stringValue
        self.imageUrl = relation["imageUrl"].stringValue
        self.relation = relation["relarion"].stringValue
        self.closeType = relation["closeType"].stringValue
        self.requestType = relation["requestType"].stringValue
        self.isFriend = relation["isFriend"].boolValue
        self.mutalConnections = relation["mutalConnections"].intValue
        
    }
}

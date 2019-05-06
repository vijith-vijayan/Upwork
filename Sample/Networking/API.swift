//
//  API.swift
//  Sample
//
//  Created by Vijith T.V on 06/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import Foundation


enum API {
    
    case getRelations(parameters: [String: String])
}


extension API: EndpointType {
    
    var baseURL: URL {
        return URL(string: "https://api.lykapp.com/lykjwt/index.php?/LYKUser/")!
    }
    
    var path: String {
        return "getUserConnections"
    }
    
    
}

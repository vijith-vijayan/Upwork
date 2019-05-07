//
//  Constants.swift
//  Sample
//
//  Created by Vijith T.V on 06/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import Foundation
import Alamofire

protocol EndpointType {
    
    var baseURL: String { get }
    
    var path: String { get }
    
}

extension Webservice: EndpointType {
   
    var path: String {
        return "getUserConnections"
    }
    
    var baseURL: String {
        return "https://api.lykapp.com/lykjwt/index.php?/LYKUser/"
    }
    
}

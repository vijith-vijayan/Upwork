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

protocol RequestData {
    
    var parameters: Parameters { get }
    var header: HTTPHeaders { get }
    
    
}

extension Webservice: EndpointType {
   
    var path: String {
        return "getUserConnections"
    }
    
    var baseURL: String {
        return "https://api.lykapp.com/lykjwt/index.php?/LYKUser/"
    }
    
}

extension Webservice: RequestData {
    
    var parameters: Parameters {
        return [:]
    }
    
    var header: HTTPHeaders {
        return ["token":" "]
    }
    
    
}

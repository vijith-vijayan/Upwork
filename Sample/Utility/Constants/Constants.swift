//
//  Constants.swift
//  Sample
//
//  Created by Vijith T.V on 06/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

typealias responseJSON = JSON

var count: Int = 1
var page: Int {
    get {
        return 0
    } set {
        count = newValue
    }
}

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
        return ["userId":"#XZ#$","relativeId":"#$ZK!%","start":count,"limit":25,"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjcmVhdGVkX2F0IjoxNTU2ODc4Mjg4LCJ2YWxpZF9mb3IiOjg2NDAwfQ.zy0LQ7IbIvKoXWJ5HU7un95qCzK5FYZYuyKJ-gOA-1Q"]
    }
    
    
    
    var header: HTTPHeaders {
        return ["token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjcmVhdGVkX2F0IjoxNTU3MTI5NDEwLCJ2YWxpZF9mb3IiOjg2NDAwfQ.Km_JshF51YmaSRXieonaGsRMjJMZaMk6ndfcTsFC2tY-gtuuloncin-X$K!Y"]
    }
    
    
}

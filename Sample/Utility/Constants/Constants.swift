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
var relations = [Relations]()
var object: [Relations]? {
    
    didSet {
        for item in object! {
            if !relations.contains(where: {$0.userId.elementsEqual(item.userId)}) {
                relations.append(item)
            }
        }
    }
}

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
        return ["token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjcmVhdGVkX2F0IjoxNTU3MzAxMzk4LCJ2YWxpZF9mb3IiOjg2NDAwfQ.lpImsd8--YqBNkaF97WpGVnLZGxQLqRh9Wrph0oMIBg","relativeId":"#M%Y!Y","userId":"X!Y$Z","limit":20,"start":0]
    }
    
    
    
    var header: HTTPHeaders {
        return ["token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjcmVhdGVkX2F0IjoxNTU3MzAxMzk4LCJ2YWxpZF9mb3IiOjg2NDAwfQ.lpImsd8--YqBNkaF97WpGVnLZGxQLqRh9Wrph0oMIBg-gtsroncin-XZYKZ"]
    }
    
    
}

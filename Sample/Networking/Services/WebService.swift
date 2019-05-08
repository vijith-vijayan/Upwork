//
//  WebService.swift
//  Sample
//
//  Created by Vijith T.V on 06/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct Webservice {
    
    // MARK: URL
    private var url = ""
    
    // MARK: Request Services
    
    public func request(params: Parameters, header: HTTPHeaders,
                        completion: @escaping ([Relations]?, Error?) -> ()) {
        let url = "\(baseURL)\(path)"
        Alamofire.request(url, method: .post, parameters: params,encoding: JSONEncoding.default, headers: header).responseJSON { (response) in
            if let error = response.error {
                completion(nil, error)
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                let relations = json["relations"].arrayValue
                var r = [Relations]()
                for relation in relations {
                    let object = Relations(relation: relation)
                    r.append(object)
                }
                completion(r, nil)
                return
            }
        }
    }
    
}

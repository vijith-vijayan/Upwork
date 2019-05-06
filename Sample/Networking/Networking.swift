//
//  Networking.swift
//  Sample
//
//  Created by Vijith T.V on 06/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import Foundation

struct Networking {
    
    func performNetworkTask<T: Codable>(endpoint: EndpointType,
                                        params: [String: String], type: T.Type,
                                        completion: ((_ response: T) -> Void)?) {
        <#function body#>
    }
}

//
//  EndpointType.swift
//  Sample
//
//  Created by Vijith T.V on 06/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import Foundation

protocol EndpointType {
    
    var baseURL: URL { get }
    var path: String { get }
}

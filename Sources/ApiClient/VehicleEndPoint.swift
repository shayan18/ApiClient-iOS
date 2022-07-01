//
//  VehicleEndpoint.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation
import Microya

/// The collection of supported endpoints of the Vehicle API
public enum VehicleEndpoint {
  /// Request to get vehicles.
  case vehicle(apiKey: String)
}

extension VehicleEndpoint: Endpoint {
  public typealias ClientErrorType = VehicleError

  public var headers: [String : String] {
    [:]
  }

  public var subpath: String {
    switch self {
    case .vehicle:
      return "/json/9ec3a017-1c9d-47aa-8c38-ead2bfa9b339/c284fd9a-c94e-4bfa-8f26-3a04ddf15b47"
    }
  }

  public var method: HttpMethod {
    switch self {
    case .vehicle:
      return .get
    }
  }

  public var queryParameters: [String: QueryParameterValue] {
    switch self {
    case let .vehicle(apiKey):
      return ["apiKey": .string(apiKey)]
    }
  }

  public var decoder: JSONDecoder {
    JSONDecoder()
  }

  public var encoder: JSONEncoder {
    JSONEncoder()
  }
}

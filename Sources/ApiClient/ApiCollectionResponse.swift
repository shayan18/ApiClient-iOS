//
//  ApiCollectionResponse.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

/// The top level response structure of all endpoints providing body data.
///
/// See JSON:API specification at https://jsonapi.org/format/#document-top-level for more details.
public struct ApiCollectionResponse<T: Decodable & Equatable>: Decodable {
  /// The responses 'primary data' where the expected data type differs from endpoint to endoint, thus it's provided as a generic type. Required.
  public let data: [Resource<T>]
}

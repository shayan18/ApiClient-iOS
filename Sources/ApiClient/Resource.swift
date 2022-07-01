//
//  Resource.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation

/// The base resource object structure defined in JSON:API specification. See https://jsonapi.org/format/#document-resource-objects.
public struct Resource<ResourceType: Decodable & Equatable>: ResourceObject, Equatable, Identifiable {
  /// The unique identifier for the given object. Required.
  public let id: String

  /// A string representation of the objects type. `lower_camel_cased` by Robot  API convention. Required.
  public let type: String

  /// The expected resource type, differs from endpoint to endpoint and thus is a generic type. Required.
  public let attributes: ResourceType
}

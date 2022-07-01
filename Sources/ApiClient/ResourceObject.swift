//
//  ResourceObject.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation

/// The minimum requirements for a resource object as specified by JSON:API standard.
///
/// See https://jsonapi.org/format/#document-resource-objects for more details.
public protocol ResourceObject: Decodable & Identifiable where ID == String {
  /// A string representation of the objects type. `lower_camel_cased`
  var type: String { get }
}


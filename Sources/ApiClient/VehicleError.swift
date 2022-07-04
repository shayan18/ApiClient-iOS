//
//  File.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation

/// Represents a single error with some additional information on what's wrong.
public struct VehicleError: Decodable, Equatable {
  public let status: Int

  public let title: String

  public let traceId: String

  public let type: String
}



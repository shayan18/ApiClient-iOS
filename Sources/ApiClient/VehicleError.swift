//
//  File.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation

public struct VehicleError: Decodable, Equatable {
  /// Represents a single error with some additional information on what's wrong.

    /// The status codes string representation for easier debugging.
    public let status: String

    /// The localized title to be shown to the user if error not otherwise handled.
    public let title: String
  }



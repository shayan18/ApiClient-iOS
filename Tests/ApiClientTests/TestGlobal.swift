//
//  File.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//
import Foundation
import Microya
@testable import ApiClient

let testApiProvider: ApiProvider<VehicleEndpoint> = .init(
  baseUrl: URL(string: "https://api.jsonstorage.net/v1")!,
  plugins: []
)

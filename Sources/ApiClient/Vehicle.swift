//
//  Vehicle.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation

// MARK: - Vehicle
public struct Vehicle: Decodable, Equatable {
   public let batteryLevel: Int
   public let lat: Double
   public let lng: Double
   public let maxSpeed: Int
   public let vehicleType: VehicleType
   public let hasHelmetBox: Bool
}

public enum VehicleType: String, Decodable {
    case ebicycle = "ebicycle"
    case emoped = "emoped"
    case escooter = "escooter"
}

enum TypeEnum: String, Decodable {
    case vehicle = "vehicle"
}

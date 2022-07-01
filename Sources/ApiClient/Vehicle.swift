//
//  Vehicle.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation

// MARK: - Vehicle
public struct Vehicle: Decodable, Equatable {
    let batteryLevel: Int
    let lat: Double
    let lng: Double
    let maxSpeed: Int
    let vehicleType: VehicleType
    let hasHelmetBox: Bool
}

enum VehicleType: String, Decodable {
    case ebicycle = "ebicycle"
    case emoped = "emoped"
    case escooter = "escooter"
}

enum TypeEnum: String, Decodable {
    case vehicle = "vehicle"
}

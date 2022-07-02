//
//  Vehicle.swift
//  
//
//  Created by Shayan Ali on 01.07.22.
//

import Foundation
import MapKit

// MARK: - Vehicle
public class Vehicle: NSObject, Decodable {

  public let batteryLevel: Int
  public let lat: Double
  public let lng: Double
  public let maxSpeed: Int
  public let vehicleType: VehicleType
  public let hasHelmetBox: Bool

  public static func == (lhs: Vehicle, rhs: Vehicle) -> Bool {
    lhs.batteryLevel == rhs.batteryLevel &&
    lhs.lat == rhs.lat &&
    lhs.lng == rhs.lng &&
    lhs.maxSpeed == rhs.maxSpeed &&
    lhs.vehicleType == rhs.vehicleType &&
    lhs.hasHelmetBox == rhs.hasHelmetBox
  }
}

public enum VehicleType: String, Decodable {
  case ebicycle = "ebicycle"
  case emoped = "emoped"
  case escooter = "escooter"
}

enum TypeEnum: String, Decodable {
  case vehicle = "vehicle"
}

extension Vehicle {
  public var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: lat, longitude: lng)
  }
}

extension Vehicle: MKAnnotation {
  public var coordinate: CLLocationCoordinate2D {
    get {
      return location
    }
  }

  public var title: String? {
    get {
      return vehicleType.rawValue
    }
  }
}

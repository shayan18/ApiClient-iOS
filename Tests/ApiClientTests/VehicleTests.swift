// Copyright © 2021 Papershift GmbH. All rights reserved.

@testable import ApiClient
import Microya
import XCTest

final class VehicleTests: XCTestCase {
  let apiKey: String = "9ef7d5b3-21c7-4a78-a92b-91efef42cabb"

  func testVehicle() throws {
    let vehicleResponseBody =
      try testApiProvider.performRequestAndWait(
        on: .vehicle(apiKey: apiKey),
        decodeBodyTo: ApiCollectionResponse<Vehicle>.self
      )
      .get()
    for (index, _) in vehicleResponseBody.data.enumerated() {
      XCTAssertNotNil(vehicleResponseBody.data[index].attributes.batteryLevel)
      XCTAssertNotNil(vehicleResponseBody.data[index].attributes.maxSpeed)
    }
  }
}

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 29/07/2022
  Last modified: 05/08/2022
  Acknowledgement:
    1. Tom Huynh. "SSETContactList".Github.com. https://github.com/TomHuynhSG/SSETContactList (accessed Jul 29, 2022)
*/

import Foundation
import SwiftUI
import CoreLocation

struct Item: Identifiable, Codable {
    var id: Int
    var name: String
    var desription: String
    var type: String
    var room: String
    
    // If the seller contains showroom or physical store
    var address: String
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (latitude: coordinates.latitude, longitude: coordinates.longtitude)
    }
    
    // If the seller contains online shop
    var link: String
    
    var imageLink: [String]

}

struct Coordinates: Codable {
    var latitude: Double
    var longtitude: Double
}

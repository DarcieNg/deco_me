/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 01/08/2022
  Last modified: 05/08/2022
  Acknowledgement:
    1. Tom Huynh. "SSETContactList".Github.com. https://github.com/TomHuynhSG/SSETContactList (accessed Jul 29, 2022)
*/


import Foundation

struct Room: Identifiable, Codable {
    var id: Int
    var name: String
    var imageName: String
}

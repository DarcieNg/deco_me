/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 01/08/2022
  Last modified: 05/08/2022
  Acknowledgement: None
*/

import Foundation

var livingroom = furnitureSort(Room: "livingroom")
var kitchen = furnitureSort(Room: "kitchen")
var bedroom = furnitureSort(Room: "bedroom")
var bathroom = furnitureSort(Room: "bathroom")

func furnitureSort(Room: String) -> [Item] {
    var sortItems: [Item] = []
    for item in items {
        if item.room == Room {
            sortItems.append(item)
        }
    }
    return sortItems
}

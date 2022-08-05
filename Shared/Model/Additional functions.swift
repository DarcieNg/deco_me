/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 03/08/2022
  Last modified: 05/08/2022
  Acknowledgement: None
 */
import Foundation
import SwiftUI

//function use to define the list of items will be used
func sortList(room: String) -> [Item] {
    var itemList: [Item] = []
    
    if (room == "livingroom") {
        itemList = livingroom
    } else if (room == "kitchen") {
        itemList = kitchen
    } else if (room == "bathroom") {
        itemList = bathroom
    } else {
        itemList = bedroom
    }
    return itemList
}


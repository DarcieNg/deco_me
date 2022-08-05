/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 30/07/2022
  Last modified: 05/08/2022
  Acknowledgement:
    1. Tom Huynh. "SSETContactList".Github.com. https://github.com/TomHuynhSG/SSETContactList (accessed Jul 30, 2022)
*/

import SwiftUI
import CoreLocation

struct ItemView: View {
    var item:Item
    
    var body: some View {
        // ScrollView to scroll the whole page
        ScrollView {
            VStack (alignment: .leading, spacing: 16.0) {
                // item's image
                ImageDisplay(item: item)
                // custom header
                Text(item.name)
                    .font(.custom("Courier New Bold", size: 40).bold())
                    .padding()
                // item's description
                Text("Description")
                    .font(.custom("Courier New Bold", size: 20).bold())
                    .padding(.leading)
                // calling data from json file
                Text(item.desription)
                    .padding(.leading)
                // item's address
                Text("Address")
                    .font(.custom("Courier New Bold", size: 20).bold())
                    .padding(.leading)
                // put the address and the button in the same line using HStack
                HStack {
                    Text(item.address)
                        .padding(.leading)
                    NavigationLink(destination: MapView(coordinate: item.locationCoordinate)) {
                        Image(systemName: "arrow.up.forward.square")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                    } // using NavigationLink to lead to the MapView() page
                }
                
            HStack (alignment: .bottom, spacing: 16.0) {
                Text("Website")
                    .font(.custom("Courier New Bold", size: 20).bold())
                    .padding(.leading)
                    
                Link(destination: URL(string: item.link)!) {
                    Image(systemName: "arrow.up.forward.square")
                        .resizable()
                        .frame(width: 25.0, height: 25.0)
                } // using Link() to lead to the original page that sell the item
                Spacer()
            }
            }
        }
            .edgesIgnoringSafeArea([.top])
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ItemView(item: items[1])
                .previewDevice("iPhone 12 Pro Max")
        }
    }
}

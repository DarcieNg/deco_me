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
    1. DesignCode."Build your first iOS app - SwiftUi Livestream". youtube.com. https://www.youtube.com/watch?v=1AXyC24NCkE&ab_channel=DesignCode (accessed by Aug 4, 2022)
*/

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Text("deco me.")
                        .font(.custom("Courier New Bold", size: 60).bold())
                        .padding(.leading)
                    Spacer()
                } // create a horizontal stack to store the customed header
                .padding(.top)
                
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 350.0))], spacing: 36.0, content: {
                    ForEach(rooms) {room in
                        NavigationLink(destination: RoomView(room: room)) {
                        RoomSectionView(room: room)
                        } // display all the available rooms in the house, when click direct to the view of item list of that room
                    }
                }) // create a grid to custom the display of each section

            }
            .navigationBarHidden(true) // hide the navigation bar
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 8")
            .previewInterfaceOrientation(.portrait)
    }
}

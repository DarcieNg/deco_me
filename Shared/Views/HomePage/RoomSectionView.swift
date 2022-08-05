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
import SwiftUI

// create the view of each room in the homeView
struct RoomSectionView: View {
    var room: Room
    
    var body: some View {
        ZStack {
            Image(room.imageName)
                .resizable()
                .cornerRadius(10.0)
                .shadow(color: .black, radius: 5.0)
            Text(room.name)
                .foregroundColor(.white)
                .font(.custom("Courier New Bold", size: 25).bold())
                .shadow(color: .black, radius: 10.0)
        }
            .frame(width: 300.0, height: 320.0)
    }
}

struct RoomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RoomSectionView(room: rooms[0])
    }
}

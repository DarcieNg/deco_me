/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 04/08/2022
  Last modified: 05/08/2022
  Acknowledgement: None
*/

import SwiftUI

// set the size of each image displaying in the itemView
struct ImageView: View {
    var imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
        }
        .frame(width: 300, height: 300)
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageName: items[0].imageLink[0])
    }
}

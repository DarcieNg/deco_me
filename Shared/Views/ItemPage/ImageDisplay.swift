/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 04/08/2022
  Last modified: 05/08/2022
  Acknowledgement:
    1. DesignCode."Build your first iOS app - SwiftUi Livestream". youtube.com. https://www.youtube.com/watch?v=1AXyC24NCkE&ab_channel=DesignCode (accessed by Aug 4, 2022)
*/


import SwiftUI

struct ImageDisplay: View {
    var item: Item
    
    var body: some View {
        // using ScrollView() and the methods to display multiple images
        ScrollView (.horizontal, showsIndicators: true) {
            HStack {
                ForEach(item.imageLink, id: \.self) { image in
                    ImageView(imageName: image)
                }
            }
        }
    }
}

struct ImageDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ImageDisplay(item: items[0])
    }
}

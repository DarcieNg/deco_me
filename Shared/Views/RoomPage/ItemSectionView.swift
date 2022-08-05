/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Vu Thuy Duong
  ID: s3865443
  Created  date: 31/07/2022
  Last modified: 05/08/2022
  Acknowledgement: None
*/

import SwiftUI

struct ItemSectionView: View {
    var item: Item
    
    var body: some View {
        HStack {
            Image(item.imageLink[0])
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .mask(Circle())
                .padding(.leading)
            
            Text(item.name)
                .font(.title2)
                .padding()
            Spacer()
        }
    }
}

struct ItemSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ItemSectionView(item: items[2])
    }
}

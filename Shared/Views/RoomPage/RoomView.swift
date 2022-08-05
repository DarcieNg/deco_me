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
    2. DesignCode."Build your first iOS app - SwiftUi Livestream". youtube.com. https://www.youtube.com/watch?v=1AXyC24NCkE&ab_channel=DesignCode (accessed by Aug 4, 2022)
    3. HackingWithSwift. "How to add a search bar to filter your data". hackingwithswift.com. https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-search-bar-to-filter-your-data (accessed Aug 3, 2022)
*/

import SwiftUI

struct RoomView: View {
    @State private var searchText = ""
    
    var room: Room
    
    var body: some View {
        // call function to take the list
        let itemList = filterList(key: searchText, filterList: sortList(room: room.imageName))
        NavigationView {
            ScrollView {
                // create customed header
                HStack {
                    Text(room.name)
                        .font(.custom("Courier New Bold", size: 30).bold())
                        .padding()
                    Spacer()
                    NavigationLink(destination: HomeView()
                        .navigationBarHidden(true)) {
                        Label("Home", systemImage: "house.circle")
                    }
                    .padding()
                }
                .padding(.leading)
                .padding(.top)
                
                // display list regading to the room type
                ForEach(itemList) { item in
                    NavigationLink(destination: ItemView(item: item)) {
                        ItemSectionView(item: item)
                    } // lead to the item's view
                }
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Please input searching item's name") // let the search bar always appear on top of page and get the searching input
        .edgesIgnoringSafeArea([.top])
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

// take the list contain the searching keyword
func filterList(key: String, filterList: [Item]) -> [Item] {
    var afterFilter: [Item]  = []
    
    if key.isEmpty {
        afterFilter = filterList
    } else {
        afterFilter = filterList.filter({
            $0.name.localizedCaseInsensitiveContains(key) // using filter() to filter the list with the searching keyword, not care about the case sensitivity
        })
    }
    return afterFilter
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView(room: rooms[0])
    }
}

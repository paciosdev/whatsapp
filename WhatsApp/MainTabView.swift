//
//  MainTabView.swift
//  WhatsApp
//
//  Created by Kekko Paciello on 25/03/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            
            Text("")
                .tabItem {
                    Image(systemName: "star")
                        Text("Favourites")
                }
            
            Text("")
                .tabItem {
                    Image(systemName: "clock")
                        Text("Calls")
                }
            
            Text("")
                .tabItem {
                    Image(systemName: "person.circle")
                        Text("Contacts")
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                        Text("Chat")
                }
            
            Text("")
                .tabItem {
                    Image(systemName: "gear")
                        Text("Settings")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

//
//  ContentView 2.swift
//  RWAJ
//
//  Created by Kareem on 26/03/2025.
//


import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 2

    var body: some View {
        TabView(selection: $selectedTab) {
            
            Text("Home Screen")
                .tabItem {
                    Image("item1")
                    Text("Home")
                }
                .tag(0)

            Text("Discover Screen")
                .tabItem {
                    Image("item2")
                    Text("Discover")
                }
                .tag(1)

            Shows()
                .tabItem {
                    Image("item3")
                    Text("Shows")
                }
                .tag(2)

            Text("Products Screen")
                .tabItem {
                    Image("item4")
                    Text("Products")
                }
                .tag(3)

            Text("Account Screen")
                .tabItem {
                    Image("item5")
                    Text("Account")
                }
                .tag(4)
        }
        .accentColor(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

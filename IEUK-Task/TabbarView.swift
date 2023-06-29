//
//  TabbarView.swift
//  IEUK-Task
//
//  Created by Shraddha on 29/06/23.
//

import SwiftUI

struct TabbarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ContentView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("CC")
                }
                .tag(0)
            
            ManufacturerView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Feed")
                }
                .tag(1)
        }
    }
}

@main
struct TabbarView_Previews: App {
    var body: some Scene {
        WindowGroup {
            TabbarView()
        }
    }
}


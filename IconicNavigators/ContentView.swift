//
//  ContentView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LincolnView()
                .tabItem {
                    Label("Lincoln", systemImage: "car")
                }
            
            PrinceHenryView()
                .tabItem {
                    Label("Prince Henry", systemImage: "person")
                }
            ZeldaNaviView()
                .tabItem {
                    Label("Navi", systemImage: "sparkles")
                }
            MapKitView()
                .tabItem {
                    Label("MapKit", systemImage: "map")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

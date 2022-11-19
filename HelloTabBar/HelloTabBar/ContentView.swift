//
//  ContentView.swift
//  HelloTabBar
//
//  Created by hyemi on 2022/10/26.
//

import SwiftUI
struct ContentView: View {
    @State private var tabSelection = 1
    
    var body: some View {

        TabView(selection: $tabSelection) {
            NavigationView {
                SecondView()
            }.tabItem {
                Image(systemName: "house.fill")
                Text("Tab Label 1")
            }.tag(1)
            
            NavigationView {
                SecondView()
            }.tabItem {
                Image(systemName: "house.circle")
                Text("Tab Label 2")
            }.tag(2)
            
            NavigationView {
                SecondView()
            }.tabItem {
                Image(systemName: "music.note.house.fill")
                Text("Tab Label 3")
            }.tag(3)
        }
    }
}

struct SecondView: View {
    var body: some View {
        List {
            NavigationLink(destination: {
                ThirdView()
            }, label: {
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                }
            })
        }
        .navigationTitle(Text("Hello World"))
    }
}

struct ThirdView: View {
    var body: some View {
        List {
            Text("Hi World")
                .font(.largeTitle)
        }
        .navigationTitle(Text("Hi World"))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

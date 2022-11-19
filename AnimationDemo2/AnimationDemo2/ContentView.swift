//
//  ContentView.swift
//  AnimationDemo2
//
//  Created by hyemi on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    @State private var visibility: Bool = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $visibility) {
                Text("Toggle Text Views")
            }
            if visibility {
                Text("Hello World")
                    .font(.largeTitle)
            } else {
                Text("Hi World")
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

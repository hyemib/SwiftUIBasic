//
//  ContentView.swift
//  GesutreDemo
//
//  Created by hyemi on 2022/11/01.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var swipeRight: Bool
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .bold()
                .gesture(
                    TapGesture()
                        .onEnded({ _ in
                            count += 1
                        })
                )
                .gesture(
                    DragGesture()
                        .onChanged{ (value) in
                            if value.location.x >= 0.5 {
                                self.swipeRight = true
                                print("x")
                            }
                        })
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

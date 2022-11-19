//
//  ContentView.swift
//  DrawDemo
//
//  Created by hyemi on 2022/10/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 30) {
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: CGFloat(13.0)))
                    .foregroundColor(.blue)
                    .frame(width: 150, height: 150)
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: CGFloat(13.0)))
                    .foregroundColor(.black)
                    .frame(width: 150, height: 150)
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: CGFloat(13.0)))
                    .foregroundColor(.red)
                    .frame(width: 150, height: 150)
            }
            
            HStack(spacing: 30) {
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: CGFloat(13.0)))
                    .foregroundColor(.yellow)
                    .frame(width: 150, height: 150)
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: CGFloat(13.0)))
                    .foregroundColor(.green)
                    .frame(width: 150, height: 150)
               
            }
            .offset(y: 75)
            
        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

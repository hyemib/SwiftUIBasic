//
//  StarView.swift
//  DrawDemo
//
//  Created by hyemi on 2022/10/27.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        HStack(alignment: .bottom) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 70)

            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 90)

            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 110)

            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 130)

            Rectangle()
                .fill(.yellow)
                .frame(width: 30, height: 150)
        }

    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
    }
}

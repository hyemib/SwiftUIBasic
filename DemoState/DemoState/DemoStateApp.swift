//
//  DemoStateApp.swift
//  DemoState
//
//  Created by hyemi on 2022/10/24.
//

import SwiftUI

@main
struct DemoStateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(demoData: DemoData())
        }
    }
}

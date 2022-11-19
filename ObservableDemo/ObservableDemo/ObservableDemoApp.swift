//
//  ObservableDemoApp.swift
//  ObservableDemo
//
//  Created by hyemi on 2022/10/24.
//

import SwiftUI

@main
struct ObservableDemoApp: App {
    let timerData = TimerData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(TimerData())
        }
    }
}

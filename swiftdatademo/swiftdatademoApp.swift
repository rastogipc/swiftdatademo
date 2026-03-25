//
//  swiftdatademoApp.swift
//  swiftdatademo
//
//  Created by Prakash Rastogi on 25/03/26.
//

import SwiftUI
import SwiftData

@main
struct swiftdatademoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}

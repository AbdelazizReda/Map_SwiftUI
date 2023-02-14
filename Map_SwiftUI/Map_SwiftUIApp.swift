//
//  Map_SwiftUIApp.swift
//  Map_SwiftUI
//
//  Created by Abdelaziz Reda on 13/02/2023.
//

import SwiftUI

@main
struct Map_SwiftUIApp: App {
    @StateObject var vm = LocationViewModel()

    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
        
    }
}

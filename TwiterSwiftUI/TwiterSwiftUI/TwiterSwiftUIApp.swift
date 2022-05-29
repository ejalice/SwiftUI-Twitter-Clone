//
//  TwiterSwiftUIApp.swift
//  TwiterSwiftUI
//
//  Created by eunji on 2022/05/27.
//

import SwiftUI
import Firebase

@main
struct TwiterSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()

        }
    }
}

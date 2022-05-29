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
    @StateObject var viewModel = AuthViewModel() // viewModel initialize을 AppFile에서 함으로, 다른 곳에서 안 해도 됨.
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel) // contentView에 environmentObject인 viewModel을 넘겨줌.
        }
    }
}

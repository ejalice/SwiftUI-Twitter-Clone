//
//  ContentView.swift
//  TwiterSwiftUI
//
//  Created by eunji on 2022/05/27.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewModel // Initialized 되었기 때문에 사용 가능.
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                // no user logged in
                LoginView()
            } else {
                // have a logged in user
                mainInterfaceView
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var mainInterfaceView: some View {
         ZStack(alignment: .topLeading) {
             MainTabView()
                 .navigationBarHidden(showMenu)
     
             if showMenu {
                 ZStack {
                     Color(.black)
                         .opacity(showMenu ? 0.25 : 0.0)
                 }.onTapGesture {
                     withAnimation(.easeInOut) {
                         showMenu = false
                     }
                 }
                 .ignoresSafeArea()
             }
     
             SideMenuView()
                 .frame(width: 300)
                 .offset(x: showMenu ? 0: -300, y: 0)
                 .background(showMenu ? Color.white : Color.clear)
         }
         .navigationTitle("Home")
         .navigationBarTitleDisplayMode(.inline)
         .toolbar {
             ToolbarItem(placement: .navigationBarLeading) {
                 Button {
                     withAnimation(.easeInOut){
                         showMenu.toggle()
                     }
                 } label: {
                     Circle()
                         .frame(width: 32, height: 32)
                 }
             }
         }
         .onAppear {
             showMenu = false
         }
    }
}

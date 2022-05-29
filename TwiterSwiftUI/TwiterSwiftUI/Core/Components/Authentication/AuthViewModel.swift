//
//  AuthViewModel.swift
//  TwiterSwiftUI
//
//  Created by eunji on 2022/05/29.
//

import SwiftUI
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var userSession: Firebase.User? // store userSession -> user가 로그인 상태? value 있음: nil
    
    init() {
        self.userSession = Auth.auth().currentUser // currentUser logged in ? store it in userSession :
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: Login with email \(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        print("DEBUG: Register with email \(email)")
    }
}

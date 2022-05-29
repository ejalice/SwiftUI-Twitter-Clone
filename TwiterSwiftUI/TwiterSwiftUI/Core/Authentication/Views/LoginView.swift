//
//  LoginView.swift
//  TwiterSwiftUI
//
//  Created by eunji on 2022/05/28.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        // parent container
        NavigationView {
            VStack {
                AuthHeaderView(title1: "Hello.", title2: "Welcome back")
                
                VStack(spacing: 40) {
                    CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                    
                    CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)

                }
                .padding(.horizontal, 32)
                .padding(.top, 44)
                
                HStack {
                    Spacer()
                    
                    NavigationLink {
                        Text("Reset password View ...")
                    } label: {
                        Text("Forgot Password?")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                            .padding(.top)
                            .padding(.trailing, 24)
                    }

                }
                
                Button {
                    viewModel.login(withEmail: email, password: password)
                } label: {
                    Text("Sign in")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            
                Spacer()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarHidden(true)
                } label: {
                    HStack {
                        Text("Don't have an account?")
                            .font(.footnote)
                        
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.bottom, 32)
                .foregroundColor(.blue)

            }
            .ignoresSafeArea()
        .navigationBarHidden(true)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//
//  LoginView.swift
//  Flashscore Reporter
//
//  Created by Antoni Gebauer on 10/11/2024.
//

import SwiftUI

// Main View that will be shown after login
struct MainView: View {
    var body: some View {
        Text("Welcome to Main View!")
            .font(.largeTitle)
    }
}

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.linearGreen, .linearBlue], startPoint: .leading, endPoint: .trailing)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    VStack(spacing: 20) {
                        Text("Logowanie")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        
                        TextField("Nazwa Użytkonika", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        if !username.isEmpty {
                            SecureField("Hasło", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal)
                        }
                        
                        Button(action: {
                            // Add your login validation logic here
                            isLoggedIn = true // This should be conditional based on your validation
                        }) {
                            Text("Zaloguj")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 50)
                                .cornerRadius(10)
                        }
                        .disabled(username.isEmpty || password.isEmpty)
                        .tint(.blue)
                        .padding(.top)
                    }
                    .buttonStyle(.borderedProminent)
                    .animation(.easeInOut(duration: 0.4), value: username)
                    .padding(.vertical, 30)
                    .padding(.horizontal, 20)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
                .padding()
            }
            .navigationDestination(isPresented: $isLoggedIn) {
                ContentView()
                    .navigationBarBackButtonHidden(true) // Prevents going back to login
            }
        }
    }
}

#Preview {
    LoginView()
}

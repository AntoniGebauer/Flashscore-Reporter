//
//  ContentView.swift
//  Flashscore Reporter
//
//  Created by Antoni Gebauer on 20/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Logowanie")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                TextField("Nazwa Użytkownika", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                if !username.isEmpty {
                    SecureField("Hasło", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                }
               
                
                Button(action: {
                    // Add your login logic here
                }) {
                    Text("Zaloguj")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .cornerRadius(10)
                }
                .tint(.black.opacity(0.6))
                .buttonStyle(.borderedProminent)
                .disabled(username.isEmpty || password.isEmpty)
                .padding(.top)
            }
            .animation(.easeInOut(duration: 0.4), value: username)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

//
//  LoginView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 08/05/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showRegister: Bool = false
    @State private var showResetPassword: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Zaloguj się")
                    .font(.largeTitle)
                    .bold()
                
                TextField("Email", text: $email)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                SecureField("Hasło", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                Button(action: {
                    //Logika logowania
                    print("Zaloguj \(email)")
                }) {
                    Text("Zaloguj się")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                
                Button("Nie masz konta? Zarejestruj się!") {
                    showRegister = true
                }
                .padding(.top)
                
                NavigationLink("", destination: RegisterView(), isActive: $showRegister)
                    .hidden()
                
                Button("Zresetuj hasło!") {
                    showResetPassword = true
                }
                .padding(.top)
                
                NavigationLink("", destination: ResetPassword(), isActive: $showResetPassword)
                    .hidden()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}

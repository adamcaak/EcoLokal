//
//  RegistrationView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 08/05/2025.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        VStack {
            Text("Zarejestruj się!")
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
            
            SecureField("Powtórz hasło", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            Button(action: {
                //Logika rejestracji
                print("Zarejestruj \(email)")
            }) {
                Text("Zarejestruj się")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
                    .padding(.top, 50)
            }
        }
        .padding()
    }
}

#Preview {
    RegisterView()
}

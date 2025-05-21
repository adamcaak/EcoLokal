//
//  ResetPasswordView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 08/05/2025.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var email: String = ""
    @State private var confirmMessage: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Resetuj hasło")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 50)
            
            Text("Podaj swój adres e-mail aby zresetować hasło.")
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            TextField("Email", text: $email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            Button(action: {
                //Tutaj będzie logika resetowania hasła
                confirmMessage = "Jeśli adres jest poprawny wysłaliśmy link resetujący na maila!"
                print("Resetuj hasło dla: \(email)")
            }) {
                Text("Wyślij link resetujący")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
                    .padding(.top, 30)
            }
            
            if let message = confirmMessage {
                Text(message)
                    .foregroundColor(.green)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding(.top)
            }
        }
        .padding()
    }
}

#Preview {
    ResetPasswordView()
}

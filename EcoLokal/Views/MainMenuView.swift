//
//  MainMenuView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 08/05/2025.
//

import SwiftUI

struct MainMenuView: View {
    @StateObject private var viewModel = SellerListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Witaj w EcoLokal")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 50)
                VStack(spacing: 20) {
                    NavigationLink(destination: SellerListView()) {
                        Text("Przeglądaj sprzedawców")
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    NavigationLink(destination: AddSellerView(viewModel: viewModel)) {
                        Text("Dodaj nowego sprzedawce")
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 30)
                
                Spacer()
            }
        }
    }
}

#Preview {
    MainMenuView()
}

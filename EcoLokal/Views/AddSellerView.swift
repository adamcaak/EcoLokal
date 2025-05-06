//
//  AddSellerView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 06/05/2025.
//

import SwiftUI

struct AddSellerView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: SellerListViewModel
    
    @State private var name: String = " "
    @State private var category: String = " "
    @State private var city: String = " "
    @State private var description: String = " "
    @State private var phoneNumber: String = " "
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Dane sprzedawcy")) {
                    VStack(alignment: .leading) {
                        Text("Nazwa sprzedawcy")
                            .font(.headline)
                    }
                    TextField("Wpisz nazwę", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom)
                    
                    Text("Kategoria")
                        .font(.headline)
                    TextField("Wpisz kategorię", text: $category)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom)
                    
                    Text("Miasto")
                        .font(.headline)
                    TextField("Wpisz miasto", text: $city)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom)
                    
                    Text("Numer telefonu")
                        .font(.headline)
                    TextField("Wpisz numer", text: $phoneNumber)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom)
                    
                    Text("Opis")
                        .font(.headline)
                    TextField("Wpisz opis", text: $description)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom)
                }
            }
            
            Section {
                Button("Dodaj") {
                    let newSeller = Seller(name: name, category: category, city: city, description: description, phoneNumber: phoneNumber)
                    viewModel.sellers.append(newSeller)
                    
                    //Reset pól formularza
                    name = ""
                    category = ""
                    city = ""
                    description = ""
                    phoneNumber = ""
                    
                    //Zamknięcie formularza
                    dismiss()
                }
                .disabled(name.isEmpty || category.isEmpty || city.isEmpty || description.isEmpty || phoneNumber.isEmpty)
            }
        }
        .navigationTitle("Dodaj Sprzedawcę")
    }
}

#Preview {
    let previewViewModel = SellerListViewModel()
    return AddSellerView(viewModel: previewViewModel)
}

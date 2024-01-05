//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            HeaderView(title: "Register", SubTitle: "Start organizing todos", angle: -15, backgroundColor: .orange)
            
            Form {
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                
                TextField("User name", text: $viewModel.name)
                    .autocorrectionDisabled()
                
                TextField("Email id", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Create password", text: $viewModel.password)
                
                TLButton(title: "Create Account",
                         backgroundColor: .green) {
                    viewModel.createAccount()
                }
                  .padding()
            }
            .offset(y: -50)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

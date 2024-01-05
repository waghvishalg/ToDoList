//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", SubTitle: "Get things done", angle: 15, backgroundColor: .pink)
                
                // login Form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                    
                    TLButton(title: "Log In",
                             backgroundColor: .blue) {
                        viewModel.login()
                    }
                     .padding()
                }
                .textFieldStyle(DefaultTextFieldStyle())
                .offset(y: -50)
                
                // Create Account
                VStack(spacing: 8) {
                    Text("New Account here?")
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                }
                .padding(.bottom, 100)
                Spacer()
            }
            .offset(y: 50)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

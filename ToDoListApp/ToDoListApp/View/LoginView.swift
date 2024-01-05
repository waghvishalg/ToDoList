//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", SubTitle: "Get things done", angle: 15, backgroundColor: .pink)
                
                // login Form
                Form {
                    TextField("Email Address", text: $email)
                    SecureField("Password", text: $password)
                    
                    TLButton(title: "Log In",
                             backgroundColor: .blue) {
                        // Login action
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

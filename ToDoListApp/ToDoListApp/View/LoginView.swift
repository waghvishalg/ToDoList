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
                HeaderView()
                
                // login Form
                Form {
                    TextField("Email Address", text: $email)
                    TextField("Password", text: $password)
                    
                    Button {
                        // Login click
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            Text("Log In")
                                .bold()
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                }
                .textFieldStyle(DefaultTextFieldStyle())
                .padding()
                
                // Create Account
                VStack(spacing: 8) {
                    Text("New Account here?")
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                }
                .padding(.bottom, 50)
                
             
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", SubTitle: "Start organizing todos", angle: -15, backgroundColor: .orange)
            Spacer()
            
            Form {
                TextField("User name", text: $name)
                TextField("Email id", text: $email)
                SecureField("Create password", text: $password)
                
                TLButton(title: "Create Account",
                         backgroundColor: .green) {
                    // Sing up action
                }
                  .padding()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

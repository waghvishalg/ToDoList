//
//  LoginViewViewModel.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else { return }
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        guard email.textFieldValidatorEmail() else {
            errorMessage = "Please enter valid Email address"
            return false
        }
        
        return true
    }
}

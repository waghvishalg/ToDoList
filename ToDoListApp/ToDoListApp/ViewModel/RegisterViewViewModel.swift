//
//  RegisterViewViewModel.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    
    init() {}
    
    func createAccount() {
        guard validation() else {
            print("Failed registered")
            return
        }
        print("Successfully registered")
    }
    
    func validation() -> Bool {
        errorMessage = ""
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,  !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        guard email.textFieldValidatorEmail() else {
            errorMessage = "Please enter valid Email address"
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password should be grater than or equal to 6 digit"
            return false
        }
        
        return true
    }
}

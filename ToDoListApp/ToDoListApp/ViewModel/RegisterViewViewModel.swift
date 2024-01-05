//
//  RegisterViewViewModel.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import FirebaseFirestore
import FirebaseAuth
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
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
            print("User id for: ", userId)
        }
    }
    
    func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
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

//
//  NewItemViewViewModel.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var dueDate: Date = Date()
    
    init() {}
    
    func save() {
        
    }
}

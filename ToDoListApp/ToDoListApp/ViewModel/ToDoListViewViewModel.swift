//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primer View Tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView: Bool = false
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}

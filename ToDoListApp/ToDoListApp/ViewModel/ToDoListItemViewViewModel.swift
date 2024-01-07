//
//  ToDoListItemViewViewModel.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

/// ViewModel for a single to do list items view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func markCompleted(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.markDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}

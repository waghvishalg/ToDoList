//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import Foundation

/// ViewModel for list of items view
/// Primer View Tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView: Bool = false
    
    init() {}
}

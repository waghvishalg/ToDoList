//
//  ToDoList.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func markDone(_ state: Bool) {
        isDone = state
    }
}

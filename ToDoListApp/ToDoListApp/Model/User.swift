//
//  User.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

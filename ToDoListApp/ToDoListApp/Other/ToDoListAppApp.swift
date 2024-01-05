//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Vishal Wagh on 04/01/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

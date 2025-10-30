//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Deniz Özcan on 29.10.2025.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

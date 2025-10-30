//
//  User.swift
//  ToDoList
//
//  Created by Deniz Özcan on 29.10.2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

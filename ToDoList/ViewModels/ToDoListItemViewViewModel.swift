//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Deniz Özcan on 29.10.2025.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
//for single to do list item view
class ToDoListItemViewViewModel: ObservableObject {
    init(   )   {   }
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
       itemCopy.setDone(_state: !item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}

//
//  TLButton.swift
//  ToDoList
//
//  Created by Deniz Özcan on 29.10.2025.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: (   ) -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(background))
                
                Text(title)
                    .foregroundStyle(Color(.white))
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Value", background: .pink){
        // action
    }
}

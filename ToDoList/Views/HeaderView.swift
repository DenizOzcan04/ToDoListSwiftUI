//
//  HeaderView.swift
//  ToDoList
//
//  Created by Deniz Özcan on 29.10.2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            VStack{
                Text(title)
                    .foregroundStyle(Color(.white))
                    .font(.system(size: 50))
                    .bold()
                Text(subTitle)
                    .foregroundStyle(Color(.white))
                    .font(.system(size: 30))
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subTitle: "Subtitle", angle: 15, background: .blue)
}

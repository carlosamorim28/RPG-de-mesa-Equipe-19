//
//  RPGTextFieldBackground.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 27/02/25.
//

import SwiftUI


struct RPGTextFieldBackground: View {
    @Binding var value: String
    var title = ""
    var textInitial: String
    var body: some View {
        VStack (alignment: .leading) { //Gerenciar "componente de texto"
                Text(title)
                .padding(.vertical, -4.0)
                .fontWeight(.medium)
                .foregroundColor(.rpgTextPrimary)
                TextField(textInitial, text: $value, axis: .vertical)
                    .padding(16)
                    .padding(.top, -110.0)
                    .multilineTextAlignment(.leading)
                    .frame(height: 220)
                    .border(Color.black)
                    .cornerRadius(8.0)
                    .foregroundColor(.rpgTextPrimary)
                    .background(Color.rpgBackgroundText)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8.0)
                            .strokeBorder()
                            .foregroundColor(.rpgStrokeChar)     
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        .padding(.vertical, 8)
    }
}

#Preview {
    RPGTextFieldBackground(value: .constant("teste"), title: "teste", textInitial: "Texto incial")
}

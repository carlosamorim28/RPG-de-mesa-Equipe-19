//
//  RPGTextIField.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/12/24.
//

import SwiftUI

struct RPGTextField: View {
    @Binding var value: String
    var title = ""
    var textInitial: String
    var body: some View {
        VStack (alignment: .leading) { //Gerenciar "componente de texto"
                Text(title)
                .padding(.vertical, -4.0)
                .fontWeight(.medium)
                TextField(textInitial, text: $value)
                    .padding(16)
                    .frame(height: 48)
                    .border(Color.black)
                    .cornerRadius(8.0)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8.0)
                            .strokeBorder()
                            .foregroundColor(.rpgStrokeChar)
                    )
            }
        .padding(.vertical, 8)
    }
}

#Preview {
    RPGTextField(value: .constant("teste"), textInitial: "Texto inicial")
}

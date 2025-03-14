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
        VStack (alignment: .leading) {
            Text(title)
                .padding(.vertical, -4.0)
                .fontWeight(.medium)
                .foregroundColor(.rpgTextPrimary)
            TextField(textInitial, text: $value)
                .padding(16)
                .frame(height: 48)
                .foregroundColor(.rpgTextPrimary)
                .background(Color.rpgBackgroundText)
                .overlay(
                    RoundedRectangle(cornerRadius: 8.0)
                        .stroke(Color.rpgStrokeChar, lineWidth: 1)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8.0))
        }.padding(.vertical, 8)
    }
}

#Preview {
    RPGTextField(value: .constant("teste"), textInitial: "Texto inicial")
}

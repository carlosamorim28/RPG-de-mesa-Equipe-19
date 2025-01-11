//
//  RPGTextIField.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/12/24.
//

import SwiftUI

struct RPGTextIField: View {
    @Binding var value: String
    var title = ""
    var body: some View {
        VStack (alignment: .leading) { //Gerenciar "componente de texto"
                Text(title)
                .padding(.vertical, -4.0)
                .bold()
                TextField("", text: $value)
                    .padding(16)
                    .frame(height: 48)
                    .border(Color.black)
                    .cornerRadius(8.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8.0)
                            .strokeBorder()
                    )
            }
        .padding(.vertical, 8)
    }
}

#Preview {
    RPGTextIField(value: .constant("teste"))
}

//
//  testes.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/01/25.
//

import SwiftUI

struct CircularTextField: View {
    @State private var textValue: String = ""
    
    var body: some View {
        TextField("", text: $textValue)
            .multilineTextAlignment(.center) // Centraliza o texto no campo
            .frame(width: 100, height: 100) // Define o tamanho do círculo
            .background(Color.white) // Cor de fundo
            .clipShape(Circle()) // Corta no formato de círculo
            .overlay(
                Circle()
                    .stroke(Color.black, lineWidth: 2) // Adiciona a borda
            )
            .shadow(radius: 5) // Adiciona uma sombra para destacar
    }
}

#Preview {
    CircularTextField()
}

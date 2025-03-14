//
//  DelteButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 14/03/25.
//

import SwiftUI

struct DeleteButton: View {
    var body: some View {
        Circle()
            .frame(width: 32)
            .foregroundColor(.rpgBlue)
            .overlay(
                Image(systemName: "minus")
                    .foregroundColor(.rpgTextSecundary)
            )
    }
}

#Preview {
    DeleteButton()
}

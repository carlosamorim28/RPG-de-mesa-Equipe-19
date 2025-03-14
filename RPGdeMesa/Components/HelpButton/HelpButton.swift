//
//  HelpButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 14/03/25.
//

import SwiftUI

struct HelpButton: View {
    var body: some View {
        Circle()
            .frame(width: 32)
            .foregroundColor(.rpgTextSecundary)
            .overlay(
                Image(systemName: "questionmark")
                    .foregroundColor(.rpgTextPrimary)
            )
    }
}

#Preview {
    HelpButton()
}

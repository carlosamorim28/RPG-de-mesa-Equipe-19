//
//  RPGDetailsButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 24/01/25.
//

import SwiftUI

struct RPGDetailsButton: View {
    var body: some View {
        HStack(spacing: 8){
            Text("Ver detalhes")
                .font(.system(size: 16))
                .fontWeight(.light)
                .foregroundColor(.rpgBlue)
            Image(.navigationIcon2)
        }
    }
}

#Preview {
    RPGDetailsButton()
}

//
//  rpgAlgumacoisa.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 24/01/25.
//

import SwiftUI

struct RPGAtributtes: View {
    var body: some View {
        ZStack{
            Color(.blue)
            Image(.rpgMageIcon)
                .resizable()
                .padding(10.0)
        }
        .frame(width: 36.0, height: 36.0)
        .clipShape(Circle())
    }
}

#Preview {
    RPGAtributtes()
}

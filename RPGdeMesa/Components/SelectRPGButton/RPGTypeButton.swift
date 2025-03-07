//
//  RPGTypeButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 24/01/25.
//

import SwiftUI

struct RPGTypeButton: View {
    var body: some View {
        ZStack{
            Color(.rpgBlue)
            VStack{
                Image(.rpgSystem)
                    .resizable()
                    .frame(width: 64.0, height: 60.0)
                    .foregroundColor(.white)
                Text("Dungeons & Dragons")
                    .bold()
                    .font(.system(size: 16))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 10.0)
            .padding(.vertical, 27.0)
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .frame(width: 160.0, height: 160.0)
    }
}

#Preview {
    RPGTypeButton()
}

//
//  SelectRPG.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 10/01/25.
//

import SwiftUI

struct SelectRPG: View {
    var sistema: String = "Sistema RPG"
    var body: some View {
        ZStack{
            Color(.rpgLightGray) //só pra visualizar
            HStack{
                Image(.rpgSystem)
                    .resizable()
                    .frame(width: 100 , height: 100)
                Spacer()
                Text(sistema)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
                
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .frame(width: 398 , height: 100)
    }
}

#Preview {
    SelectRPG()
}

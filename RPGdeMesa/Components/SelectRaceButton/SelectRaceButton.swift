//
//  SelectRace.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 07/01/25.
//

import SwiftUI

struct SelectRaceButton: View {
    var imageCharacter: String = "rpgCharacter"
    var title: String = "Title"
    var descricao: String = "Descricao"
    var click: () -> Void
    var body: some View {
        ZStack{
            Color(.rpgLightGray)
            VStack(alignment: .leading){
                Image(imageCharacter)
                    .resizable()
                    .frame(width: 160, height: 120)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Spacer()
                    .frame(height: 16)
                Text(title)
                    .font(.system(size: 20))
                    .bold()
                Spacer()
                    .frame(height: 8)
                Text(descricao)
                    .font(.system(size: 14))
                    .bold()
                Spacer()
                
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .frame(width: 160, height: 240)
        .onTapGesture {
            click()
        }
    }
}

#Preview {
    SelectRaceButton(){}
}

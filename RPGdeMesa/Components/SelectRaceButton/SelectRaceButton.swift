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
//    var descricao: String = "Descricao"
    var click: () -> Void
    var body: some View {
        ZStack{
            Color(.white)
            VStack(alignment: .leading){
                Image(.rpgSystem)
                    .resizable()
                    .frame(width: 171, height: 105)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Spacer()
                    .frame(height: 8)
                Text(title)
                    .font(.system(size: 20))
                    .bold()
                    .padding(.horizontal, 8.0)
                Spacer()
                    .frame(height: 8)
//                Text(descricao)
//                    .font(.system(size: 14))
//                    .bold()
//                Spacer()
                
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .frame(width: 171, height: 146)
        .shadow(color: Color.black.opacity(0.25), radius: 9.1)
        .onTapGesture {
            click()
        }
    }
}

#Preview {
    SelectRaceButton(){}
}

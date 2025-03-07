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
    var click: () -> Void
    var body: some View {
        ZStack{
            Color(.white)
            VStack(alignment: .leading, spacing: 8.0){
                Image(.rpgCharacter)
                    .resizable()
                    .frame(width: 171, height: 105)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Text(title)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .padding(.horizontal, 8.0)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .frame(width: 171, height: 146)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(lineWidth: 2.0)
                .foregroundColor(.rpgStrokeChar))
        .onTapGesture {
            click()
        }
    }
}

#Preview {
    SelectRaceButton(){}
}

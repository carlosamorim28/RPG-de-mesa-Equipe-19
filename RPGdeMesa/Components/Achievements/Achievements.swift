//
//  Achievements.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/03/25.
//

import SwiftUI

struct Achievements: View {
    var title: String = "Criador de Personagem"
    var numChar: Int
    var body: some View {
        ZStack{
            Color(.white)
            HStack(alignment: .top){
                Image(.rpgAchievements)
                    .resizable()
                    .frame(width: 100 , height: 100)
                VStack(alignment: .leading, spacing: 8){
                    Text(title)
                        .font(.system(size: 16))
                        .bold()
                    Text("Você criou \(numChar) personagens usando o CharCraft!")
                        .font(.system(size: 14))
                }.padding(8)
                Spacer()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .frame(height: 100)
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(lineWidth: 2.0)
                .foregroundColor(.rpgStrokeChar))
    }
}

#Preview {
    Achievements(numChar: 3)
}

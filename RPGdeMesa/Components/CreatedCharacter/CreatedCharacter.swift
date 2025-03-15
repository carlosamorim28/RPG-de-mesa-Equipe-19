//
//  CreatesCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 19/01/25.
//

import SwiftUI

struct CreatedCharacter: View {
    var character: CharacterModel
    var body: some View {
        ZStack{
            Color(.rpgBackgroundComp)
            VStack(alignment: .leading, spacing: 8){
                Image(uiImage: character.image ?? UIImage()) 
                    .resizable()
                    .frame(width: 180.0, height: 105.0)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .overlay{
                        VStack(spacing: 4){
                            RPGAtributtes()
                            RPGAtributtes()
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.all, 8.0)
                    }
                Text("\(character.name), \(character.age) anos")
                    .bold()
                    .font(.system(size: 16))
                    .padding(.leading, 8.0)
                    .foregroundColor(.rpgTextPrimary)
                RPGDetailsButton()
                    .padding([.leading, .bottom, .trailing], 8.0)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .frame(width: 180, height: 170.0)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(lineWidth: 2.0)
                .foregroundColor(.rpgStrokeChar))
    }
}

#Preview {
    CreatedCharacter(character: CharacterModel())
}

//
//  ViewCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 27/02/25.
//

import SwiftUI

struct ViewCharacter: View {
    var character: CharacterModel
    var body: some View {
        ZStack{
            Color.rpgBackground.ignoresSafeArea()
            VStack{
                Image(uiImage: character.image ?? UIImage())
                    .resizable()
                    .frame(height: 160)
                    .overlay{
                        VStack{
                            RPGAtributtes()
                            RPGAtributtes()
                            RPGAtributtes()
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.all, 8.0)
                    }

                    Text("\(character.name), \(character.age) anos")
                        .foregroundColor(.rpgTextPrimary)
                        .bold()
                        .font(.system(size: 24))
                        .padding(.leading, 8.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                HStack{
                    VStack{
                        Text("\(character.height) de altura")
                            .font(.system(size: 16))
                            .foregroundColor(.rpgTextTertiary)
                        
                        Text("\(character.weight) kg")
                            .font(.system(size: 16))
                            .foregroundColor(.rpgTextTertiary)
                    }
                    Spacer()
                    VStack{
                        Text("Alinhamento Moral")
                            .font(.system(size: 16))
                            .foregroundColor(.rpgTextTertiary)
                        
                        Text("\(character.alighment) ")
                            .font(.system(size: 16))
                            .foregroundColor(.rpgTextTertiary)
                    }
                }
                    
            }
        }.frame(maxWidth: .infinity)
        .frame(height: 243)
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
    }
}

#Preview {
    ViewCharacter(character: CharacterModel())
}

//
//  Home.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 19/01/25.
//

import SwiftUI

struct Home: View {
    @Binding var characterViewModel: CharacterViewModel
    var body: some View {
        ZStack {
            Color.rpgBackground.ignoresSafeArea()
    
            VStack(alignment: .leading, spacing: 24){
                Spacer()
                    .frame(height: 71)
                Text("Olá, Usuário!")
                    .font(.system(size: 32))
                    .bold()
                VStack (alignment: .leading, spacing: 8.0){
                    HStack(spacing: 110){
                        Text("Seus personagens")
                            .font(.system(size: 20))
                        NavigationLink {
                            CreateCharacter(characterViewModel: $characterViewModel)
                        } label: {
                            Text("Adicionar +")
                                .font(.system(size: 16))
                                .foregroundColor(.rpgBlue)
                        }
                    }
                    ScrollView(.horizontal){
                        HStack{
                            CreatedCharacter(character: CharacterModel())
                            ForEach(characterViewModel.listCharacters){ character in
                                CreatedCharacter(character: character)
                            }
                        }
                    }.frame(width: 360)
                }
                VStack(alignment: .leading, spacing: 8.0){
                    Text("Recomendações de sistemas")
                        .font(.system(size: 20))
                    RPGTypeButton()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Home(characterViewModel: .constant(CharacterViewModel()))
}

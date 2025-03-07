//
//  CharacterBackground.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 27/02/25.
//

import SwiftUI

struct CharacterBackground: View {
    @Binding var characterViewModel: CharacterViewModel
    var body: some View {
        ZStack{
            Color.rpgBackground.ignoresSafeArea()
            ZStack{
                VStack{
                    RPGTextFieldBackground(value: $characterViewModel.newCharacter.storyChar, title: "História de Origem", textInitial: "Escreva sua história aqui.")
                }
                VStack{
                    Spacer()
                    NavigationLink {
                        CharacterView(characterViewModel: $characterViewModel)
                    } label: {
                        RPGNextButton()
                    }
                }
            }.padding(16)
            VStack{
                NavigationBar(title: "Background do Personagem")
                    .ignoresSafeArea()
                ProgressBar()
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

#Preview {
    CharacterBackground(characterViewModel: .constant(CharacterViewModel()))
}

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
                VStack{
                    RPGTextFieldBackground(value: $characterViewModel.newCharacter.storyChar, title: "História de Origem", textInitial: "Escreva sua história aqui.")
                    Spacer()
                }.padding(.horizontal, 16)
                .padding(.top, 160)

                VStack(spacing: 16){
                    NavigationBar(title: "Espécie do Personagem")
                    ProgressBar()
                    Spacer()
                    NavigationLink {
                        CharacterView(characterViewModel: $characterViewModel)
                    } label: {
                        RPGNextButton()
                    }.padding(16)
                }.ignoresSafeArea()
            }.navigationBarHidden(true)
    }
}

#Preview {
    CharacterBackground(characterViewModel: .constant(CharacterViewModel()))
}

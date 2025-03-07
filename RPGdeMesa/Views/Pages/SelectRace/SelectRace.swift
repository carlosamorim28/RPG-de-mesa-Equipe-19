//
//  SelectRace.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 07/01/25.
//

import SwiftUI

struct SelectRace: View {
    @Binding var characterViewModel: CharacterViewModel
    var body: some View {
        ZStack{
            Color.rpgBackground.ignoresSafeArea()
            
            ZStack{
                Color.rpgBackground.ignoresSafeArea()
                VStack{
                    Spacer().frame(height: 170)
                    ScrollView(.vertical) {
                        VStack(spacing: 16) {
                            ForEach(0..<1) {index in
                                HStack(spacing: 16){
                                    SelectRaceButton(title: "Humano", click: {characterViewModel.newCharacter.race = "Humano"})
                                    SelectRaceButton(title: "Elfos", click: {characterViewModel.newCharacter.race = "Elfo"})
                                }
                                
                                HStack(spacing: 16){
                                    SelectRaceButton(title: "Anões", click: {characterViewModel.newCharacter.race = "Anao"})
                                    SelectRaceButton(title: "Gnomos", click: {characterViewModel.newCharacter.race = "Gnomo"})
                                }
                            
                                HStack(spacing: 16){
                                    SelectRaceButton(title: "Halflings", click: {characterViewModel.newCharacter.race = "Halflings"})
                                    SelectRaceButton(title: "Draconatos",  click: {characterViewModel.newCharacter.race = "Draconatos"})
                                }
                            
                                HStack(spacing: 16){
                                    SelectRaceButton(title: "Tieflings", click: {characterViewModel.newCharacter.race = "Tieflings"})
                                    SelectRaceButton(title: "Meio-Orcs", click: {characterViewModel.newCharacter.race = "Meio-Orcs"})
                                }
                           }
                                
                      }
                    }.frame(height: 550)
                    Spacer()
                    VStack{
                        NavigationLink {
                            CharacterAtributtes(characterViewModel: $characterViewModel)
                        } label: {
                            RPGNextButton()
                        }
                    }
                }
                VStack(spacing: 16){
                    NavigationBar(title: "Espécie do Personagem")
                    ProgressBar()
                    Spacer()
                }.ignoresSafeArea()
            }.navigationBarHidden(true)
        }
    }
}
#Preview {
    SelectRace(characterViewModel: .constant(CharacterViewModel()))
}

//
//  ViewCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 03/01/25.
//

import SwiftUI
import SwiftData

struct CharacterView: View {
    @Binding var characterViewModel: CharacterViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color.rpgBackground.ignoresSafeArea()
            ZStack{
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(0..<1) {index in
                            Spacer()
                                .frame(height: 100)

                            ViewCharacter(character: CharacterModel())
                            
                            Text("Estatísticas & Atributos")
                                .fontWeight(.medium)
                                .font(.system(size: 24))
                            
                            ProfField(value: $characterViewModel.newCharacter.profBonus)
                                .disabled(true)
                            
                            HStack(spacing: 8){
                                PointsField(value: $characterViewModel.newCharacter.constitution, title: "Constituição")
                                    .disabled(true)
                                PointsField(value: $characterViewModel.newCharacter.strength, title: "Força")
                                    .disabled(true)
                                PointsField(value: $characterViewModel.newCharacter.intelligence, title: "Inteligência")
                                    .disabled(true)
                            }
                            HStack(spacing: 8){
                                PointsField(value: $characterViewModel.newCharacter.classArmor, title: "Classe Armadura")
                                    .disabled(true)
                                PointsField(value: $characterViewModel.newCharacter.pointsHit, title: "Pontos de Vida")
                                    .disabled(true)
                            }
                            HStack(spacing: 8){
                                PointsField(value: $characterViewModel.newCharacter.initiative, title: "Iniciativa")
                                    .disabled(true)
                                PointsField(value: $characterViewModel.newCharacter.deslocamento, title: "Deslocamento")
                                    .disabled(true)
                            }
                            Text("Background do Personagem")
                                .fontWeight(.medium)
                                .font(.system(size: 24))
                            RPGTextFieldBackground(value: $characterViewModel.newCharacter.storyChar, title: "História de Origem", textInitial: "Escreva sua história aqui.")
                                .disabled(true)
                        }
                    }.padding(16)
                }.frame(height: 700)
            }
            VStack{
                NavigationBar(title: "Visualização do Personagem")
                ProgressBar()
                    .padding(.top, 10)
                Spacer()
                ToolBar(characterViewModel: $characterViewModel)
            }.ignoresSafeArea()
        }.navigationBarHidden(true)
    }
}

#Preview {
    CharacterView(characterViewModel: .constant(CharacterViewModel()))
}

//
//  CharacterAtributtes.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/01/25.
//

import SwiftUI

struct CharacterAtributtes: View {
    @Binding var characterViewModel: CharacterViewModel
    var body: some View {
        ZStack{
            Color.rpgBackground.ignoresSafeArea()
            VStack(alignment: .leading){
                ProfField(value: $characterViewModel.newCharacter.profBonus)
                Spacer()
                    .frame(height: 16)
                Text("Pontos de Atributos")
                    .fontWeight(.medium)
                    .font(.system(size: 20))
                VStack{
                    HStack(){
                        PointsField(value: $characterViewModel.newCharacter.constitution, title: "Constituição")
                            .padding(.trailing, 8.0)
                        PointsField(value: $characterViewModel.newCharacter.strength, title: "Força")
                            .padding(.trailing, 8.0)
                        PointsField(value: $characterViewModel.newCharacter.intelligence, title: "Inteligência")
                    }
                    HStack{
                        PointsField(value: $characterViewModel.newCharacter.dexterity, title: "Destreza")
                            .padding(.trailing, 8.0)
                        PointsField(value: $characterViewModel.newCharacter.wise, title: "Sabedoria")
                            .padding(.trailing, 8.0)
                        PointsField(value: $characterViewModel.newCharacter.charisma, title: "Carisma")
                    }
                }.padding(.bottom, 16.0)

                Text("Pontos de Vida e Armadura")
                    .fontWeight(.medium)
                    .font(.system(size: 20))
                HStack{
                    PointsField(value: $characterViewModel.newCharacter.classArmor, title: "Classe Armadura")
                        .padding(.trailing, 8.0)
                    PointsField(value: $characterViewModel.newCharacter.pointsHit, title: "Pontos de Vida")
                }
                HStack{
                    PointsField(value: $characterViewModel.newCharacter.initiative, title: "Iniciativa")
                        .padding(.trailing, 8.0)
                    PointsField(value: $characterViewModel.newCharacter.deslocamento, title: "Deslocamento")
                }
                Spacer()
                    .frame(height: 185)
                NavigationLink {
                    CharacterBackground(characterViewModel: $characterViewModel)
                } label: {
                    RPGNextButton()
                }
            }.padding(.horizontal, 16.0)
        }
        
    }
}

#Preview {
    CharacterAtributtes(characterViewModel: .constant(CharacterViewModel()))
}

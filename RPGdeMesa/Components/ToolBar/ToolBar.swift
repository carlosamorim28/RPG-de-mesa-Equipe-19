//
//  ToolBar.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 24/01/25.
//

import SwiftUI
import SwiftData

struct ToolBar: View {
    @Binding var characterViewModel: CharacterViewModel
    @State private var shouldNavigate = false
    @Environment (\.modelContext) var modelContext
    @Query(sort: \SwiftDataCharacterModel.id, animation: .easeIn)
    var characters: [SwiftDataCharacterModel] = []
    func saveCharacter() {
        let atualCharacter = characterViewModel.newCharacter
        let newCharacter = SwiftDataCharacterModel(
            id: atualCharacter.id,
                                                   name: atualCharacter.name,
                                                   age: atualCharacter.age,
                                                   height: atualCharacter.height,
                                                   weight: atualCharacter.weight,
                                                   image: atualCharacter.image?.pngData(),
                                                   alighment: atualCharacter.alighment,
                                                   gender: atualCharacter.gender,
                                                   classType: atualCharacter.classType,
                                                   race: atualCharacter.race,
                                                   profBonus: atualCharacter.profBonus,
                                                   constitution: atualCharacter.constitution,
                                                   strength: atualCharacter.strength,
                                                   intelligence: atualCharacter.intelligence,
                                                   dexterity: atualCharacter.dexterity,
                                                   wise: atualCharacter.wise,
                                                   charisma: atualCharacter.charisma,
                                                   classArmor: atualCharacter.classArmor, 
                                                   pointsHit: atualCharacter.pointsHit,
                                                   initiative: atualCharacter.initiative,
                                                   deslocamento: atualCharacter.deslocamento,
                                                   storyChar: atualCharacter.storyChar)
        modelContext.insert(newCharacter)
    }

    var body: some View {
        ZStack{
            Color(.rpgTextSecundary)
            HStack(spacing: 24){
//                NavigationLink {
//                    Home(characterViewModel: .constant(.init()))
//                        .navigationBarBackButtonHidden()
//                } label: {
                NavigationLink(destination: Home(characterViewModel: $characterViewModel), isActive: $shouldNavigate)
                {
                    EmptyView()
                }
                    RoundedRectangle(cornerRadius: 8.0)
                        .frame(height: 61.0)
                        .foregroundColor(.rpgBlue)
                        .overlay {
                            Text("Salvar")
                                .bold()
                                .font(.system(size: 24.0))
                                .foregroundColor(.rpgBackground)
                        }
                        .onTapGesture {
                            saveCharacter()
                        shouldNavigate = true
                        }
//                }
//                NavigationLink{
//                    CreateCharacter(characterViewModel: )
//                } label: {
                    Circle()
                        .strokeBorder(lineWidth: 1.5)
                        .frame(width: 61.0)
                        .foregroundColor(.rpgBlue)
                        .overlay{
                            Image(.rpgEditIcon)
                                .frame(width: 24)
                                .foregroundColor(.rpgBlue)
                        }
//                }
                
                Circle()
                    .strokeBorder(lineWidth: 1.5)
                    .frame(width: 61.0)
                    .foregroundColor(.rpgBlue)
                    .overlay{
                        Image(.rpgShareIcon)
                            .frame(width: 24)
                            .foregroundColor(.rpgBlue)
                    }
            }.padding(16)
        }.clipShape(RoundedRectangle(cornerRadius: 24.0))
        .shadow(color: Color.black.opacity(0.25), radius: 9.0)
        .frame(height: 95.0)
    }
}

#Preview {
    ToolBar(characterViewModel: .constant(CharacterViewModel()))
}

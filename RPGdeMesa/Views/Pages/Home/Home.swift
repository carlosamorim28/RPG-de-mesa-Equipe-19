//
//  Home.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 19/01/25.
//

import SwiftUI
import SwiftData

struct Home: View {
    @Binding var characterViewModel: CharacterViewModel
    @Environment (\.modelContext) var modelContext
    @Query(animation: .easeIn) 
    var characters: [SwiftDataCharacterModel] = []
    func deleteCharacter(deleteElement: SwiftDataCharacterModel){
        modelContext.delete(deleteElement)
    }
    var body: some View {
        ZStack {
            Color.rpgBackground.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 24){
                HStack{
                    Text("Olá, Usuário!")
                        .font(.system(size: 32))
                        .bold()
                    Spacer()
                    ProfileNavigationButton()
                }
                
                VStack (alignment: .leading, spacing: 8.0){
                    HStack(spacing: 110){
                        Text("Seus personagens")
                            .font(.system(size: 20))
                        
                        //                            Button(action: {
                        //                                withAnimation{
                        //                                    characterViewModel.addCharacter(character: CharacterModel())
                        //                                }
                        //                            }, label: {
                        NavigationLink {
                            CreateCharacter(characterViewModel: $characterViewModel)
                        } label: {
                            Text("Adicionar +")
                                .font(.system(size: 16))
                                .foregroundColor(.rpgBlue)
                        }
                        //                            })
                    }
                    ScrollView(.horizontal){
                        HStack{
                            //CreatedCharacter(character: CharacterModel()) //Testar scrollview
                            ForEach(characterViewModel.listCharacters) { character in
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
            }.padding(16)
        }.onAppear{
            characters.forEach { swiftDataCharacterModel in
                characterViewModel.addCharacter(character: CharacterModel(
                    id: swiftDataCharacterModel.id,
                    name: swiftDataCharacterModel.name,
                    age: swiftDataCharacterModel.age,
                    height: swiftDataCharacterModel.height,
                    weight: swiftDataCharacterModel.weight,
                    image: UIImage(data: swiftDataCharacterModel.image),
                    alighment: swiftDataCharacterModel.alighment,
                    gender: swiftDataCharacterModel.gender,
                    classType: swiftDataCharacterModel.classType,
                    race: swiftDataCharacterModel.race,
                    profBonus: swiftDataCharacterModel.profBonus,
                    constitution: swiftDataCharacterModel.constitution,
                    strength: swiftDataCharacterModel.strength,
                    intelligence: swiftDataCharacterModel.intelligence,
                    dexterity: swiftDataCharacterModel.dexterity,
                    wise: swiftDataCharacterModel.wise,
                    charisma: swiftDataCharacterModel.charisma,
                    classArmor: swiftDataCharacterModel.classArmor,
                    pointsHit: swiftDataCharacterModel.classArmor,
                    initiative: swiftDataCharacterModel.initiative,
                    deslocamento: swiftDataCharacterModel.deslocamento,
                    storyChar: swiftDataCharacterModel.storyChar
                ))
//                deleteCharacter(deleteElement: swiftDataCharacterModel)
            }
        }
    }
}

#Preview {
    Home(characterViewModel: .constant(CharacterViewModel()))
}

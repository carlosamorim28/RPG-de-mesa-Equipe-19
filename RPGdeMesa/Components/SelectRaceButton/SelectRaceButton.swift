//
//  SelectRace.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 07/01/25.
//

import SwiftUI

struct SelectRaceButton: View {
    var imageCharacter: String = "rpgCharacter"
    var title: String = "Title"
    var onClick: () -> Void
    var isSelected: Bool
    var body: some View {
        ZStack{
            Color.rpgBackgroundComp
            VStack(alignment: .leading, spacing: 8.0){
                Image(imageCharacter)
                    .resizable()
                    .frame(height: 105)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .background(Color.rpgTextSecundary)
                    .overlay(
                        VStack{
                            HStack{
                                Spacer()
                               HelpButton()
                            }.padding(8)
                            Spacer()
                        }
                    )
                Text(title)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(.rpgTextPrimary)
                    .padding(.horizontal, 8)
                    .padding(.bottom, 8)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .frame(width: 171, height: 146)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(lineWidth: 2.0)
                .foregroundColor(isSelected ? Color.rpgBlue : Color.rpgStrokeChar))
        .onTapGesture {
            withAnimation{
                onClick()
            }
        }
    }
}

struct RaceGridView: View {
    let races: [(title: String, image: String)] = [
        ("Humano", "rpgHumanRace"),
        ("Elfo", "rpgElfRace"),
        ("Anão", "rpgDwarfRace"),
        ("Gnomo", "rpgGnomeRace"),
        ("Halfling", "rpgHalflingRace"),
        ("Draconato", "rpgDragonbornRace"),
        ("Tiefling", "rpgTieflingRace"),
        ("Meio-Orc", "rpgHalfOrfRace")]
   @Binding var characterViewModel: CharacterViewModel
    var body: some View{
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                ForEach(races, id: \.title) { race in
                    SelectRaceButton(
                        imageCharacter: race.image,
                        title: race.title,
                        onClick: { characterViewModel.newCharacter.race = race.title },
                        isSelected: characterViewModel.newCharacter.race == race.title
                    )
                }
            }
            .padding(16)
        }
        .frame(height: 550)
    }
}

#Preview {
//    SelectRaceButton(onClick: {})
    RaceGridView(characterViewModel: .constant(CharacterViewModel()))
}

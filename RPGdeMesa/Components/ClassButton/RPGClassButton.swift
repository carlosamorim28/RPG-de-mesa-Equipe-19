//
//  RPGClassButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 19/12/24.
//

import SwiftUI
enum TypeButton: CaseIterable {
    case warrior
    case mage
    case rogue
    case druid
    case barbarian
    case cleric
}
struct ButtonDataModel {
    var title: String
    var imageClass: String
    
}

struct RPGClassButton: View {
    var buttonData: ButtonDataModel
    var isSelected: Bool
    var onClick: () -> Void
    var body: some View {
       RoundedRectangle(cornerRadius: 8)
            .strokeBorder(lineWidth: 1.0)
            .frame(width: 100, height: 100)
            .foregroundColor(isSelected ? Color.rpgBlue : Color.black)
            .background(isSelected ? Color.rpgBlue : Color.rpgBackground)
            .onTapGesture {
                withAnimation{
                    onClick()
                }
            }
            .overlay {
                VStack(spacing: 10){
                    Image(buttonData.imageClass)
                        .foregroundColor(isSelected ? Color.white : Color.black)
                        .font(.title)
   
                    Text(buttonData.title)
                        .foregroundColor(isSelected ? Color.white : Color.black)
                        .fontWeight(.medium)
                }
            }
    }
}

struct ClassSelectionView: View {
    @ObservedObject var characterViewModel: CharacterViewModel

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 16) {
                ForEach(TypeButton.allCases, id: \.self) { classType in
                    let (buttonData, classString) = selectButtonStyle(value: classType)
                    RPGClassButton(
                        buttonData: buttonData,
                        isSelected: characterViewModel.newCharacter.classType == classString,
                        onClick: {
                            characterViewModel.newCharacter.classType = classString
                        }
                    )
                }
            }
            .padding(10)
        }
    }
}

func selectButtonStyle(value: TypeButton) -> (ButtonDataModel, String) {
    switch value {
    case .mage:
        return (ButtonDataModel(title: "Mago", imageClass: "rpgMageIcon"), "Mage")
    case .warrior:
        return (ButtonDataModel(title: "Guerreiro", imageClass: "rpgWarriorIcon"), "Warrior")
    case .rogue:
        return (ButtonDataModel(title: "Ladino", imageClass: "rpgRogueIcon"), "Rogue")
    case .druid:
        return (ButtonDataModel(title: "Druida", imageClass: "rpgDruidIcon"), "Druid")
    case .barbarian:
        return (ButtonDataModel(title: "Bárbaro", imageClass: "rpgBarbarianIcon"), "Barbarian")
    case .cleric:
        return (ButtonDataModel(title: "Clérigo", imageClass: "rpgClericIcon"), "Cleric")
    }
}
#Preview {
//    RPGClassButton(buttonData: selectButtonStyle(value: .mage), isSelected: Bool, onClick: {print("clicou!")})
    ClassSelectionView(characterViewModel: CharacterViewModel())
}

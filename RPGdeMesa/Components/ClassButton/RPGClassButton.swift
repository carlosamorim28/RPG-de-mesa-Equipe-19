//
//  RPGClassButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 19/12/24.
//

import SwiftUI
enum TypeButton {
    case warrior
    case mage
    case rogue
    case druid
    case barbarian
    case cleric
}
struct ButtonDataModel {
    var backgroundColor: Color
    var title: String
    var imageClass: String
    
}

struct RPGClassButton: View {
    var buttonData: ButtonDataModel
    var onClick: () -> Void
    var body: some View {
       RoundedRectangle(cornerRadius: 8)
            .strokeBorder(lineWidth: 1.0)
            .frame(width: 100, height: 100)
            .foregroundColor(buttonData.backgroundColor)
            .onTapGesture {
                onClick()
            }
            .overlay {
                VStack(spacing: 10){
                    Image(buttonData.imageClass)
                        .foregroundColor(buttonData.backgroundColor)
                        .font(.title)
   
                    Text(buttonData.title)
                        .foregroundColor(buttonData.backgroundColor)
                        .fontWeight(.medium)
                }
            }
            .background(Color.white)
    }
}

func selectButtonStyle (value: TypeButton) -> ButtonDataModel {
    switch value{
    case .mage:
        return ButtonDataModel(backgroundColor: .blue, title: "Mago", imageClass: "rpgMageIcon")
    case .warrior:
        return ButtonDataModel(backgroundColor: .red, title: "Guerreiro", imageClass: "rpgWarriorIcon")
    case .rogue:
        return ButtonDataModel(backgroundColor: .yellow, title: "Ladino", imageClass: "rpgRogueIcon")
    case .druid:
        return ButtonDataModel(backgroundColor: .green, title: "Druida", imageClass: "rpgDruidIcon")
    case .barbarian:
        return ButtonDataModel(backgroundColor: .orange, title: "Bárbaro", imageClass: "rpgBarbarianIcon")
    case .cleric:
        return ButtonDataModel(backgroundColor: .purple, title: "Clérigo", imageClass: "rpgClericIcon")
    }
}

#Preview {
    RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {print("clicou!")})
}

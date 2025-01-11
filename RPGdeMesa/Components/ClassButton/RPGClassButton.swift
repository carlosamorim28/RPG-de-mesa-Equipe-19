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
    case assassin
}
struct ButtonDataModel {
    var backgroundColor: Color
    var title: String
    
}

struct RPGClassButton: View {
    var buttonData: ButtonDataModel
    var onClick: () -> Void
    var body: some View {
       RoundedRectangle(cornerRadius: 8)
            .frame(width: 100, height: 100)
            .foregroundColor(buttonData.backgroundColor)
            .onTapGesture {
                onClick()
            }
            .overlay {
                Text(buttonData.title)
                    .foregroundColor(.white)
            }
        
    }
}

func selectButtonStyle (value: TypeButton) -> ButtonDataModel {
    switch value{
    case .mage:
        return ButtonDataModel(backgroundColor: .blue, title: "Mago")
    case .assassin:
        return ButtonDataModel(backgroundColor: .yellow, title: "Assasino")
    case .warrior:
        return ButtonDataModel(backgroundColor: .red, title: "Guerreiro")
    }
}

#Preview {
    RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {print("clicou!")})
}

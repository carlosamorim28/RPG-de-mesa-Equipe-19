//
//  CreateCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/12/24.
//

import SwiftUI

struct CreateCharacter: View {
    @State var characterName = ""
    @State var characterAge = ""
    @State var characterStature = ""
    @State var characterWeight = ""
    var body: some View {
        NavigationView{
            
            ZStack {
                Color.white.ignoresSafeArea()
                VStack() { //Gerenciar tela
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        RPGTextIField(value: $characterName, title: "Nome do personagem")
                            .frame(width: 250)
                            .padding(.trailing, 8.0)
                        RPGTextIField(value: $characterAge, title: "Idade")
                            .padding(.leading, 8)
                    }
                    RPGTextIField(value: $characterName, title: "Avatar/Upload de Imagem do personagem")
                    HStack {
                        RPGTextIField(value: $characterStature, title: "Altura")
                            .padding(.trailing, 8)
                        RPGTextIField(value: $characterWeight, title: "Peso")
                            .padding(.leading, 8)
                    }
                    HStack {
                        RPGTextIField(value: $characterName, title: "Alinhamento Moral")
                            .padding(.trailing, 8)
                        RPGTextIField(value: $characterName, title: "Gênero")
                            .padding(.leading, 8)
                    }
                    ScrollView(.horizontal) {
                        HStack(spacing: 16) {
                            ForEach(0..<1) {_ in
                                RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .warrior), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .assassin), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .warrior), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .assassin), onClick: {})
                            }
                        }
                    }
                    //                HStack() {
                    //                    RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {})
                    //                    RPGClassButton(buttonData: selectButtonStyle(value: .warrior), onClick: {})
                    //                    RPGClassButton(buttonData: selectButtonStyle(value: .assassin), onClick: {})
                    //                    RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {})
                    //                    RPGClassButton(buttonData: selectButtonStyle(value: .warrior), onClick: {})
                    //                    RPGClassButton(buttonData: selectButtonStyle(value: .assassin), onClick: {})
                    //                }
                    Spacer()
                        .frame(height: 88)
                    NavigationLink(destination: SelectRace()){
                        RPGNextButton(
                            onClick: {})
                    }
                }
                Spacer()
            }.padding(16)
        }
    }
}


#Preview {
    CreateCharacter()
}

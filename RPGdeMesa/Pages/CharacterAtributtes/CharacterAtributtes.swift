//
//  CharacterAtributtes.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/01/25.
//

import SwiftUI

struct CharacterAtributtes: View {
    @State var characterCon: Int = 0
    @State var characterStr: Int = 0
    @State var characterInt: Int = 0
    @State var characterDex: Int = 0
    @State var characterWis: Int = 0
    @State var characterCha: Int = 0
    @State var characterAC: Int = 0
    @State var characterHP: Int = 0
    @State var characterInit: Int = 0
    @State var characterSpd: Int = 0
    @State var characterProf: Int = 0
    var body: some View {
//        ProgressBar()
//        Spacer()
//            .frame(height: 24)
        VStack(alignment: .leading){
            ProfField(value: $characterProf)
            Spacer()
                .frame(height: 16)
            Text("Pontos de Atributos")
                .fontWeight(.medium)
                .font(.title2)
            VStack{
                HStack(){
                    PointsField(value: $characterCon, title: "Constituição")
                        .padding(.trailing, 8.0)
                    PointsField(value: $characterStr, title: "Força")
                        .padding(.trailing, 8.0)
                    PointsField(value: $characterInt, title: "Inteligência")
                }
                HStack{
                    PointsField(value: $characterDex, title: "Destreza")
                        .padding(.trailing, 8.0)
                    PointsField(value: $characterWis, title: "Sabedoria")
                        .padding(.trailing, 8.0)
                    PointsField(value: $characterCha, title: "Carisma")
                }
            }.padding(.bottom, 16.0)

            Text("Pontos de Vida e Armadura")
                .fontWeight(.medium)
                .font(.title2)
            HStack{
                PointsField(value: $characterAC, title: "Classe Armadura")
                    .padding(.trailing, 8.0)
                PointsField(value: $characterHP, title: "Pontos de Vida")
            }
            HStack{
                PointsField(value: $characterInit, title: "Iniciativa")
                    .padding(.trailing, 8.0)
                PointsField(value: $characterSpd, title: "Deslocamento")
            }
            
        }.padding(.horizontal, 16.0)
//        NavigationLink {
//            //proxima tela
//        } label: {
            RPGNextButton()
//        }
    }
}

#Preview {
    CharacterAtributtes()
}

//
//  SelectRace.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 07/01/25.
//

import SwiftUI

struct SelectRace: View {
    @Binding var characterViewModel: CharacterViewModel
    var body: some View {
            ZStack{
                Color.rpgBackground.ignoresSafeArea()
                VStack{
                    RaceGridView(characterViewModel: CharacterViewModel())
                    Spacer()
                }.padding(.top, 160)
                
                VStack(spacing: 16){
                    NavigationBar(title: "Espécie do Personagem")
                    ProgressBar()
                    Spacer()
                    NavigationLink {
                        CharacterAtributtes(characterViewModel: $characterViewModel)
                    } label: {
                        RPGNextButton()
                    }.padding(16)
                    
                }.ignoresSafeArea()
            }.navigationBarHidden(true)
    }
}
#Preview {
    SelectRace(characterViewModel: .constant(CharacterViewModel()))
}

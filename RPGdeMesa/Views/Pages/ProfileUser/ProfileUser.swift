//
//  ProfileUser.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct ProfileUser: View {
    @State var isCharacterSelected: Bool = true
    var viewModel: CharacterViewModel
    var body: some View {
        ZStack{
            Color.rpgBackground.ignoresSafeArea()
            VStack{
                ProfileNavigationBar()
                    .ignoresSafeArea()
                Spacer()
            }
            VStack{
                HStack(spacing: -8){
                    ProfilePhoto()
                    Text("@Usuário")
                        .font(.system(size: 24))
                        .padding(.top, 30)
                    Spacer()
                }.padding(.bottom, 12)

                HStack(alignment: .top, spacing: 28){
                    Text("\(viewModel.listCharacters.count.formatted(.number.precision(.integerLength(2)))) \nPersonagens \ncriados")
                        .multilineTextAlignment(.center)
                    
                    Text("\(1.formatted(.number.precision(.integerLength(2)))) \nConquistas")
                        .multilineTextAlignment(.center)
                    
                    Text("\(1.formatted(.number.precision(.integerLength(2)))) \nSistema de RPG \nExplorado")
                        .multilineTextAlignment(.center)
                }
                HStack(spacing: 8){
                    ProfileButton(isPressed: $isCharacterSelected, title: "Personagens")
                    ProfileButton(isPressed: $isCharacterSelected, invert: true, title: "Conquistas")
                }
                .padding(10)
                .background(Color.rpgTextSecundary)
                if(isCharacterSelected){
                    ListView()
                        .transition(.opacity)
                }else {
                    AchievementsView()
                        .transition(.opacity)
                }
                Spacer()
            }.padding(.top, 70)
        }.navigationBarHidden(true)
    }
}

#Preview {
    ProfileUser(viewModel: CharacterViewModel())
}

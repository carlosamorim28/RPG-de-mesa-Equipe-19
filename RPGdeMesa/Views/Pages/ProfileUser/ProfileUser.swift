//
//  ProfileUser.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct ProfileUser: View {
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
                    Text("@NicollyDev")
                        .font(.system(size: 24))
                        .padding(.top, 30)
                    Spacer()
                }.padding(.bottom, 12)

                HStack(/*alignment: .top,*/ spacing: 28){
                    Text("\(06.formatted(.number.precision(.integerLength(2)))) \nPersonagens \ncriados")
                        .multilineTextAlignment(.center)
                    
                    Text("\(06.formatted(.number.precision(.integerLength(2)))) \nConquistas")
                        .multilineTextAlignment(.center)
                    
                    Text("\(06.formatted(.number.precision(.integerLength(2)))) \nSistema de RPG \nExplorado")
                        .multilineTextAlignment(.center)
                }
                HStack(spacing: 8){
                    ProfileButton(isPressed: true, title: "Personagens")
                    ProfileButton(isPressed: false, title: "Conquistas")
                }
                .padding(10)
                .background(Color.white)
                ListView()
                Spacer()
            }.padding(.top, 70)
        }
    }
}

#Preview {
    ProfileUser()
}

//
//  ProfileNavigationBar.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct ProfileNavigationBar: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
            ZStack{
                Image(.rpgProfileBackground)
                    .resizable()
                VStack{
                    HStack(spacing: 16){
                        ZStack{
                            Circle()
                                .foregroundColor(.rpgTextSecundary)
                                .frame(width: 46)
                            Image(.navigationIcon)
                                .foregroundColor(.rpgTextPrimary)
                        }.onTapGesture {
                            dismiss()
                        }
                        Spacer()
                        ZStack{
                            Circle()
                                .foregroundColor(.rpgTextSecundary)
                                .frame(width: 46)
                            Image(.rpgEditIcon)
                                .foregroundColor(.rpgTextPrimary)
                        }
                    }.padding(16)
                        .padding(.top, 36)
                    Spacer()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 16.0))
            .frame(height: 160)
    }
}

#Preview {
    ProfileNavigationBar()
}

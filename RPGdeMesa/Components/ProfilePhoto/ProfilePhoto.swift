//
//  ProfilePhoto.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct ProfilePhoto: View {
    var body: some View {
        Image(.rpgCharacter)
                .resizable()
                .scaledToFit()
                .frame(width: 110)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.rpgBackground, lineWidth: 4)
                )
    }
}

#Preview {
    ProfilePhoto()
}

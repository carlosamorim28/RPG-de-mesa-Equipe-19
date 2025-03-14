//
//  ProfileNavigationButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 13/03/25.
//

import SwiftUI

struct ProfileNavigationButton: View {
    var body: some View {
        NavigationLink {
            ProfileUser(viewModel: CharacterViewModel())
        } label: {
            Circle()
                .foregroundColor(.rpgBlue)
                .frame(height: 44)
                .overlay(
                    Image(systemName: "person")
                        .frame(width: 18.8)
                        .foregroundColor(.white)
                )
        }
    }
}

#Preview {
    ProfileNavigationButton()
}

//
//  ProfileButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct ProfileButton: View {
    @State var isPressed: Bool
    var title: String
    var body: some View {
        Button {
            withAnimation{
                isPressed.toggle()
            }
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8.0)
                    .strokeBorder(isPressed ? Color.white : Color.rpgBlue, lineWidth: 1)
                    .background(RoundedRectangle(cornerRadius: 8.0).fill(isPressed ? Color.rpgBlue : Color.white))
                
                Text(title)
                    .font(.system(size: 16))
                    .foregroundColor(isPressed ? Color.white : Color.rpgBlue)
            }
            .frame(height: 40)
        }

    }
}

#Preview {
    ProfileButton(isPressed: Bool(), title: "Personagens")
}

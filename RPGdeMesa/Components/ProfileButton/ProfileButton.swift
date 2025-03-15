//
//  ProfileButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct ProfileButton: View {
    @Binding var isPressed: Bool
    var invert: Bool = false
    var strokeColor: Color {
        if(invert){
            return !isPressed ? Color.rpgTextSecundary : Color.rpgBlue
        }else {
            
            return isPressed ? Color.rpgTextSecundary : Color.rpgBlue
        }
    }
    var backgroundColor: Color {
        if(invert){
            return !isPressed ? Color.rpgBlue : Color.rpgTextSecundary
        }else {
            
            return isPressed ? Color.rpgBlue : Color.rpgTextSecundary
        }
    }
    var textColor: Color {
        if(invert){
            return !isPressed ? Color.rpgTextSecundary : Color.rpgBlue
        }else {
            
            return isPressed ? Color.rpgTextSecundary : Color.rpgBlue
        }
    }
    var title: String
    
    var body: some View {
        Button {
            withAnimation{
                isPressed.toggle()
            }
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8.0)
                    .strokeBorder(strokeColor, lineWidth: 1)
                    .background(RoundedRectangle(cornerRadius: 8.0).fill(backgroundColor))
                
                Text(title)
                    .font(.system(size: 16))
                    .foregroundColor(textColor)
            }
            .frame(height: 40)
        }

    }
}

#Preview {
    ProfileButton(isPressed: .constant(true), title: "Personagens")
}

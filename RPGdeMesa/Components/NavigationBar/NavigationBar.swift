//
//  NavigationBar.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 21/02/25.
//

import SwiftUI

struct NavigationBar: View {
    @Environment(\.dismiss) var dismiss
    var title: String
    var body: some View {
        ZStack{
            Color.rpgBlue
            VStack{
                HStack(spacing: 16){
                    ZStack{
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 46)
                        Image(.navigationIcon)
                            .foregroundColor(.black)
                    }
                    .onTapGesture {
                        dismiss()
                    }
                     Text(title)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    Spacer()
                }.padding(16)
                    .padding(.top, 36)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 16.0))
        .frame(height: 150)
    }
}

#Preview {
    NavigationBar(title: "teste")
}

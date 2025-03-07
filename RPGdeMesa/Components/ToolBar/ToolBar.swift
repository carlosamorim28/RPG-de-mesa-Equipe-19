//
//  ToolBar.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 24/01/25.
//

import SwiftUI

struct ToolBar: View {
    var body: some View {
        ZStack{
            Color(.white)
            HStack(spacing: 24){
                RoundedRectangle(cornerRadius: 8.0)
                    .frame(height: 61.0)
                    .foregroundColor(.rpgBlue)
                    .overlay {
                        Text("Salvar")
                            .bold()
                            .font(.system(size: 24.0))
                            .foregroundColor(.white)
                    }
                Circle()
                    .strokeBorder(lineWidth: 1.5)
                    .frame(width: 61.0)
                    .foregroundColor(.rpgBlue)
                    .overlay{
                        Image(.rpgEditIcon)
                            .frame(width: 24)
                            .foregroundColor(.rpgBlue)
                    }
                
                Circle()
                    .strokeBorder(lineWidth: 1.5)
                    .frame(width: 61.0)
                    .foregroundColor(.rpgBlue)
                    .overlay{
                        Image(.rpgShareIcon)
                            .frame(width: 24)
                            .foregroundColor(.rpgBlue)
                    }
            }.padding(16)
        }.clipShape(RoundedRectangle(cornerRadius: 24.0))
        .shadow(color: Color.black.opacity(0.25), radius: 9.0)
        .frame(height: 95.0)
    }
}

#Preview {
    ToolBar()
}

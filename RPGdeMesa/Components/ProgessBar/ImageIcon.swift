//
//  ImageIcon.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/01/25.
//

import SwiftUI

struct SwiftUIView: View {
    var imageIcon: String
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 40.0, height: 40.0)
                .foregroundColor(.rpgBlue)
            Image(systemName: imageIcon)
                .foregroundColor(.white)
                .frame(width: 20.0, height: 20.0)
        }
    }
}

#Preview {
    SwiftUIView(imageIcon: "paintpalette")
}

//
//  IconBar.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/01/25.
//

import SwiftUI

struct ProgressBar: View {
    var body: some View {
        ZStack{
            Color(.rpgLightGray)
                .clipShape(Rectangle())
                .frame(width: 393.0, height: 8.0)
            HStack(spacing: 25){
                SwiftUIView(imageIcon: "cursorarrow.click")
                SwiftUIView(imageIcon: "paintpalette")
                SwiftUIView(imageIcon: "pawprint")
                SwiftUIView(imageIcon: "figure.arms.open")
                SwiftUIView(imageIcon: "square.and.pencil")
                SwiftUIView(imageIcon: "doc")
            }
        }
    }
}

#Preview {
    ProgressBar()
}

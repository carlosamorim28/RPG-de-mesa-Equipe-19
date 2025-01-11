//
//  RPGNextButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 02/01/25.
//

import SwiftUI

struct RPGNextButton: View {
    var onClick: () -> Void
    var body: some View {
        RoundedRectangle(cornerRadius: 8.0)
            .frame(width: 360.0, height: 52.0)
            .foregroundColor(.rpgLightGray)
            .onTapGesture {
               onClick()
            }
            .overlay {
                Text("Next")
                    .bold()
                    .font(.title2)
            }
   }
}

#Preview {
    RPGNextButton(
        onClick: {print("Clicou!")}
    )
}

//
//  RPGNextButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 02/01/25.
//

import SwiftUI

struct RPGNextButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8.0)
            .frame(width: 360.0, height: 52.0)
            .foregroundColor(.rpgBlue)
            .overlay {
                Text("Avançar")
                    .bold()
                    .font(.system(size: 24))
                    .foregroundColor(.white)
            }
   }
}

#Preview {
    RPGNextButton()
}

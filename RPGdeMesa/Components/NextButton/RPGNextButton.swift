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
            .foregroundColor(.rpgLightGray)
            .overlay {
                Text("Next")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.black)
            }
   }
}

#Preview {
    RPGNextButton()
}

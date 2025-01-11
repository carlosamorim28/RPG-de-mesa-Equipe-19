//
//  ArrowButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 10/01/25.
//

import SwiftUI

struct ArrowButton: View {
    var width: Double = 0
    var height: Double = 0
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.rpgLightGray)
                .frame(width: width, height: height)
            
            
        }
    }
}

#Preview {
    ArrowButton()
}

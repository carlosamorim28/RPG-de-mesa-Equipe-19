//
//  RPGTextFieldSection.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 03/01/25.
//

import SwiftUI

struct RPGTextFieldSection: View {
    @Binding var value: String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.rpgLightGray)
                .frame(width: 360, height: 175)
                .overlay{
                    VStack(alignment: .leading){
                        //HStack {
                            Text("Section")
                                .font(.title2)
                                .fontWeight(.medium)
                        
                        TextField("", text: $value)
                            .background(Color.rpgLightGray)
                    }
                    .padding(.top, 16)
                    .padding(.horizontal, 28)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    HStack(){
                        Spacer()
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.white)
                            .padding(.top, 11)
                            .padding(.horizontal, 8)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    }
                }
        }
    }
}

#Preview {
    RPGTextFieldSection(value: .constant("teste"))
}

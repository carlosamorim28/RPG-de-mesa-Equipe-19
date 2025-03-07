//
//  PointsField.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/01/25.
//

import SwiftUI

struct PointsField: View {
    @Binding var value: Int
    var title = ""
    @State private var textValue = ""
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
            .padding(.vertical, -4.0)
            .fontWeight(.medium)
            .font(.system(size: 16))
            TextField("", text: $textValue)
                .multilineTextAlignment(.center)
                .padding(16)
                .frame(height: 48)
                .background(Color.white)
                .border(Color.black)
                .cornerRadius(8.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 8.0)
                        .strokeBorder()
                        .foregroundColor(.rpgStrokeChar)
                )
                .onChange(of: textValue) { newValue in
                                   if let intValue = Int(newValue) {
                                       value = intValue
                                   }
                }
        }
        .onAppear {
            if value != 0 {
                textValue = String(value)
            }
        }
    }
}

#Preview {
    PointsField(value: .constant(0))
}

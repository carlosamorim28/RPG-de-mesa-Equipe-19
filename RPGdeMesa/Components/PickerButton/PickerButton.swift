//
//  PickerButton.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/01/25.
//

import SwiftUI

struct PickerButton: View {
    @State private var selectedOption = "Selecione"
    let options: [String]
    var title: String = ""
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .bold()
                .padding(.vertical, -4.0)
                .foregroundColor(.rpgTextPrimary)
            Menu {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedOption = option
                    }) {
                       Text(option)
                            if selectedOption == option {
                            Image(systemName: "checkmark")
                            }
                        }
                }
            } label: {
                HStack {
                    Text(selectedOption)
                        .foregroundColor(.rpgTextPrimary)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(.rpgTextPrimary)
                }
                .padding()
            }
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8.0)
                    .strokeBorder()
                    .foregroundColor(.rpgStrokeChar)
            )
            .background(Color.rpgBackgroundText)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    PickerButton(options: ["teste", "teste2"])
}

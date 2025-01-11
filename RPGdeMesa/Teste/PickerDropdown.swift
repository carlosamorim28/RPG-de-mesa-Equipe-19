//
//  PickerDropdown.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/01/25.
//

import SwiftUI

struct pickerDropdown: View {
    @State private var selectedOption = "Opção 1"
        let options = ["Opção 1", "Opção 2", "Opção 3"]

        var body: some View {
            VStack {
                Text("Selecionado: \(selectedOption)")
                    .padding()

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
                        Spacer()
                        Image(systemName: "chevron.down")
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
                .padding()
            }
            .padding()
        }
}

#Preview {
    pickerDropdown()
}

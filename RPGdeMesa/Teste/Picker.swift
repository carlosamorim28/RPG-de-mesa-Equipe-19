//
//  Picker.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/01/25.
//

import SwiftUI

struct picker: View {
    @State private var selectedOption = "Opção 1"
        let options = ["Opção 1", "Opção 2", "Opção 3"]

        var body: some View {
            VStack {
                Text("Selecionado: \(selectedOption)")
                    .padding()

                Picker("Selecione uma opção", selection: $selectedOption) {
                    ForEach(options, id: \.self) { option in
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.blue)
                            Text(option)
                        }
                        .tag(option)
                    }
                }
                
                .padding()
            }

        }
}

#Preview {
    picker()
}

//
//  testes.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/03/25.
//

import SwiftUI

struct testes: View {
    let stepImages = ["rpgDruidIcon", "step2", "step3", "step4", "step5", "step6"]
    @State private var currentStep = 0

    var body: some View {
        ZStack {
            ProgressView(value: Double(currentStep), total: Double(stepImages.count - 1))
                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
            
            // Ícones das etapas
            HStack(spacing: 20) {
                ForEach(stepImages.indices, id: \.self) { index in
                    Circle()
                        .fill(index <= currentStep ? Color.blue : Color.gray.opacity(0.3))
                        .frame(width: 40, height: 40)
                        .overlay(
                            Image(stepImages[index])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        )
                }
            }
        }
            // Botões
            HStack {
                Button("◀️ Voltar") {
                    if currentStep > 0 { currentStep -= 1 }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .disabled(currentStep == 0)

                Spacer()

                Button("Avançar ▶️") {
                    if currentStep < stepImages.count - 1 { currentStep += 1 }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .disabled(currentStep == stepImages.count - 1)
            }
            .padding(.horizontal, 40)
            .padding(.top, 20)
        }
        
    }


#Preview {
    testes()
}

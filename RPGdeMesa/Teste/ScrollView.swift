//
//  ScrollView.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/01/25.
//

import SwiftUI

struct scrollView: View {
    var body: some View {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<4) { index in
                        Text("Item \(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
}

#Preview {
    scrollView()
}

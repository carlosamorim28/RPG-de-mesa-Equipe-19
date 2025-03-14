//
//  AchievementsView.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct AchievementsView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                ForEach(0..<1) {index in
                    Achievements(numChar: 6)
                    Achievements(numChar: 3)
                }
            }
        }
    }
}

#Preview {
    AchievementsView()
}

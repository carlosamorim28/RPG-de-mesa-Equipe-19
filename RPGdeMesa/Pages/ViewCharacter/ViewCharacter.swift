//
//  ViewCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 03/01/25.
//

import SwiftUI

struct ViewCharacter: View {
    @State var sectionInfo1 = ""
    @State var sectionInfo2 = ""
    @State var sectionInfo3 = ""
    var body: some View {
        ZStack () {
            Color.white.ignoresSafeArea()
            VStack (spacing: 16){
                RPGTextFieldSection(value: $sectionInfo1)
                RPGTextFieldSection(value: $sectionInfo2)
                RPGTextFieldSection(value: $sectionInfo3)
                
            }
        }

    }
}

#Preview {
    ViewCharacter()
}

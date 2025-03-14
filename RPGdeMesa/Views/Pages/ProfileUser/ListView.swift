//
//  ListView.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 11/03/25.
//

import SwiftUI

struct ListView: View {
    @State var characterViewModel: CharacterViewModel = CharacterViewModel()

    var body: some View {
        ZStack{
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                    ForEach(characterViewModel.listCharacters) { character in
                        CreatedCharacter(character: character)
                    }
                }.padding(.horizontal, 16)
            }.frame(maxWidth: .infinity)
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    DeleteButton()
                }.padding()
            }
        }
    }
}


#Preview {
    ListView()
}

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
            List(characterViewModel.listCharacters) { CharacterModel in
                CreatedCharacter(character: CharacterModel)
            }.scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    ListView()
}

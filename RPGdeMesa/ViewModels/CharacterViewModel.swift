//
//  CharacterViewModel.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 31/01/25.
//

import Foundation

class CharacterViewModel: ObservableObject{
    @Published var listCharacters: [CharacterModel] = [CharacterModel()]
    @Published var newCharacter: CharacterModel = CharacterModel()
    func addCharacter(character: CharacterModel){
        listCharacters.append(character)
    }
}

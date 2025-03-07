//
//  CharacterModel.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 31/01/25.
//

import Foundation
import UIKit

@Observable
class CharacterModel: Identifiable{
    var id: UUID = UUID()
    var name: String = ""
    var age: String = ""
    var height: String = ""
    var weight: String = ""
    var image: UIImage?
    var alighment: String = ""
    var gender: String = ""
    var classType: String = ""
    var race: String = ""
    var profBonus: Int = 0
    var constitution: Int = 0
    var strength: Int = 0
    var intelligence: Int = 0
    var dexterity: Int = 0
    var wise: Int = 0
    var charisma: Int = 0
    var classArmor: Int = 0
    var pointsHit: Int = 0
    var initiative: Int = 0
    var deslocamento: Int = 0
    var storyChar: String = ""
    
}

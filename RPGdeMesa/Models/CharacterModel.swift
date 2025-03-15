//
//  CharacterModel.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 31/01/25.
//

import Foundation
import UIKit
import SwiftData
import SwiftUI



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
    init(){}
    init(id: UUID, name: String, age: String, height: String, weight: String, image: UIImage? = nil, alighment: String, gender: String, classType: String, race: String, profBonus: Int, constitution: Int, strength: Int, intelligence: Int, dexterity: Int, wise: Int, charisma: Int, classArmor: Int, pointsHit: Int, initiative: Int, deslocamento: Int, storyChar: String) {
        self.id = id
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.image = image
        self.alighment = alighment
        self.gender = gender
        self.classType = classType
        self.race = race
        self.profBonus = profBonus
        self.constitution = constitution
        self.strength = strength
        self.intelligence = intelligence
        self.dexterity = dexterity
        self.wise = wise
        self.charisma = charisma
        self.classArmor = classArmor
        self.pointsHit = pointsHit
        self.initiative = initiative
        self.deslocamento = deslocamento
        self.storyChar = storyChar
    }
}

@Model
class SwiftDataCharacterModel: Identifiable{
    var id: UUID = UUID()
    var name: String = ""
    var age: String = ""
    var height: String = ""
    var weight: String = ""
    var image: Data
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

    init(id: UUID, name: String, age: String, height: String, weight: String, image: Data? = nil, alighment: String, gender: String, classType: String, race: String, profBonus: Int, constitution: Int, strength: Int, intelligence: Int, dexterity: Int, wise: Int, charisma: Int, classArmor: Int, pointsHit: Int, initiative: Int, deslocamento: Int, storyChar: String) {
        self.id = id
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.image = image ?? Data()
        self.alighment = alighment
        self.gender = gender
        self.classType = classType
        self.race = race
        self.profBonus = profBonus
        self.constitution = constitution
        self.strength = strength
        self.intelligence = intelligence
        self.dexterity = dexterity
        self.wise = wise
        self.charisma = charisma
        self.classArmor = classArmor
        self.pointsHit = pointsHit
        self.initiative = initiative
        self.deslocamento = deslocamento
        self.storyChar = storyChar
    }
    func convertToCharacterModel() -> CharacterModel {
        return CharacterModel(
            id: self.id,
            name: self.name,
            age: self.age,
            height: self.height,
            weight: self.weight,
            image: UIImage(data: self.image),
            alighment: self.alighment,
            gender: self.gender,
            classType: self.classType,
            race: self.race,
            profBonus: self.profBonus,
            constitution: self.constitution,
            strength: self.strength,
            intelligence: self.intelligence,
            dexterity: self.dexterity,
            wise: self.wise,
            charisma: self.charisma,
            classArmor: self.classArmor,
            pointsHit: self.pointsHit,
            initiative: self.initiative,
            deslocamento: self.deslocamento,
            storyChar: self.storyChar
        )
        
    }
}

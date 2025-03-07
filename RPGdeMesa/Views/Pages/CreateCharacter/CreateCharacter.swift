//
//  CreateCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/12/24.
//

import SwiftUI
import PhotosUI

struct CreateCharacter: View {
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImage: UIImage? = nil
    @Binding var characterViewModel: CharacterViewModel
    var body: some View {
        ZStack {
            Color.rpgBackground.ignoresSafeArea()
            VStack(spacing: 16){
                NavigationBar(title: "Informações Básicas & Aparência")
                ProgressBar()
                Spacer()
            }.ignoresSafeArea()
            
            ZStack{
                VStack() { //Gerenciar tela
                    HStack {
                        RPGTextField(value: $characterViewModel.newCharacter.name, title: "Nome do personagem", textInitial: "Ex: Harry Potter")
                            .frame(width: 250)
                            .padding(.trailing, 8.0)
                        RPGTextField(value: $characterViewModel.newCharacter.age, title: "Idade", textInitial: "Ex: 20")
                            .padding(.leading, 8.0)
                    }
                    Text("Upload de Imagem do Personagem (png, jpg)")
                        .fontWeight(.medium)
                    PhotosPicker(
                        selection: $selectedItem,
                        matching: .images,
                        photoLibrary: .shared()) {
                            HStack{
                                Spacer()
                                Text("Clique aqui")
                                    .bold()
                                    .padding()
                                    .foregroundColor(.rpgBlue)
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(.rpgBlue)
                                    .frame(width: 25, height: 25)
                                Spacer()
                            }
                            .cornerRadius(8.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8.0)
                                    .strokeBorder()
                                    .foregroundColor(.rpgStrokeChar)
                            )
                        }
                        .background(Color.white)
                        .onChange(of: selectedItem) { newItem in
                            Task {
                                if let data = try? await newItem?.loadTransferable(type: Data.self),
                                   let uiImage = UIImage(data: data) {
                                    characterViewModel.newCharacter.image = uiImage
                                }
                            }
                        }
                    HStack {
                        RPGTextField(value: $characterViewModel.newCharacter.height, title: "Altura", textInitial: "Ex: 1,60")
                            .padding(.trailing, 8)
                        RPGTextField(value: $characterViewModel.newCharacter.weight, title: "Peso (Kg)", textInitial: "Ex: 60")
                            .padding(.leading, 8)
                    }
                    HStack {
                        PickerButton(options: ["Ordeiro e Bom", "Neutro e Bom", "Caótico e Bom"], title: "Alinhamento Moral")
                            .padding(.trailing, 8)
                        PickerButton(options: ["Outro", "Masculino", "Feminino"], title: "Gênero")
                            .padding(.leading, 8)
                    }
                    ScrollView(.horizontal) {
                        HStack(spacing: 16) {
                            ForEach(0..<1) {index in
                                RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {characterViewModel.newCharacter.classType = "Mage"})
                                RPGClassButton(buttonData: selectButtonStyle(value: .warrior), onClick: {characterViewModel.newCharacter.classType = "Warrior"})
                                RPGClassButton(buttonData: selectButtonStyle(value: .barbarian), onClick: {characterViewModel.newCharacter.classType = "Barbarian"})
                                RPGClassButton(buttonData: selectButtonStyle(value: .druid), onClick: {characterViewModel.newCharacter.classType = "Druid"})
                                RPGClassButton(buttonData: selectButtonStyle(value: .cleric), onClick: {characterViewModel.newCharacter.classType = "Cleric"})
                                RPGClassButton(buttonData: selectButtonStyle(value: .rogue), onClick: {characterViewModel.newCharacter.classType = "Rogue"})
                            }
                        }
                    }
                    Spacer()
                        .frame(height: 100)
                    NavigationLink {
                        SelectRace(characterViewModel: $characterViewModel)
                    } label: {
                        RPGNextButton()
                    }
                }.padding(.top, 150.0)
                Spacer()
            }.padding(16)
        }.navigationBarHidden(true)
    }
}

#Preview {
    CreateCharacter(characterViewModel: .constant(CharacterViewModel()))
}

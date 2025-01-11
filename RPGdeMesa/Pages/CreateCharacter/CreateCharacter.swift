//
//  CreateCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/12/24.
//

import SwiftUI
import PhotosUI

struct CreateCharacter: View {
    @State var selectedImage: UIImage? = nil
    @State var selectedItem: PhotosPickerItem? = nil
    @State var characterName = ""
    @State var characterAge = ""
    @State var characterStature = ""
    @State var characterWeight = ""
    var body: some View {
        NavigationView{
            ZStack {
                Color.white.ignoresSafeArea()
                VStack() { //Gerenciar tela
                    Spacer()
                        .frame(height: 40)
                    HStack {
                        RPGTextIField(value: $characterName, title: "Nome do personagem")
                            .frame(width: 250)
                            .padding(.trailing, 8.0)
                        RPGTextIField(value: $characterAge, title: "Idade")
                            .padding(.leading, 8)
                    }
                    Text("Upload de Imagem do Personagem (png, jpg)")
                        .bold()
                    PhotosPicker(
                        selection: $selectedItem,
                        matching: .images,
                        photoLibrary: .shared()) {
                            HStack{
                                Spacer()
                                Text("Clique aqui")
                                    .bold()
                                    .padding()
                                    .foregroundColor(.black)
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(.black)
                                    .frame(width: 25, height: 25)
                                    
                                  
                                Spacer()
                            }
                            .cornerRadius(8.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8.0)
                                    .strokeBorder()
                                    .foregroundColor(.black)
                            )
                        }
                        .background(Color.white)
                        .onChange(of: selectedItem) { newItem in
                            Task {
                                if let data = try? await newItem?.loadTransferable(type: Data.self),
                                   let uiImage = UIImage(data: data) {
                                    selectedImage = uiImage
                                }
                            }
                        }
                    HStack {
                        RPGTextIField(value: $characterStature, title: "Altura")
                            .padding(.trailing, 8)
                        RPGTextIField(value: $characterWeight, title: "Peso (Kg)")
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
                                RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .warrior), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .assassin), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .mage), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .warrior), onClick: {})
                                RPGClassButton(buttonData: selectButtonStyle(value: .assassin), onClick: {})
                            }
                        }
                    }
                    Spacer()
                        .frame(height: 24)
                    NavigationLink {
                        SelectRace()
                        
                    } label: {
                        RPGNextButton()
                    }
                }
                Spacer()
            }.padding(16)
        }
    }
}


#Preview {
    CreateCharacter()
}

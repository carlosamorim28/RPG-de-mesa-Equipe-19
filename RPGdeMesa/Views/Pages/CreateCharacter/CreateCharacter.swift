//
//  CreateCharacter.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/12/24.
//

import SwiftUI

struct CreateCharacter: View {
    @Binding var characterViewModel: CharacterViewModel
    var body: some View {
            ZStack{
                Color.rpgBackground.ignoresSafeArea()
            
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
                    PhotoPicker(characterViewModel: .constant(CharacterViewModel()))
                    
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
                    ClassSelectionView(characterViewModel: CharacterViewModel())
                    Spacer()
                        .frame(height: 120)
                }.padding(.top, 160.0)
                 .padding(.horizontal, 16)
                Spacer()
                
                VStack(spacing: 16){
                    NavigationBar(title: "Informações Básicas & Aparência")
                    ProgressBar()
                    Spacer()
                    NavigationLink {
                        SelectRace(characterViewModel: $characterViewModel)
                    } label: {
                        RPGNextButton()
                    }.padding(16)
                }.ignoresSafeArea()
                
            }.navigationBarHidden(true)
    }
}

#Preview {
    CreateCharacter(characterViewModel: .constant(CharacterViewModel()))
}

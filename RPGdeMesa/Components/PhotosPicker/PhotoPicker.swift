//
//  PhotosPicker.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 13/03/25.
//

import SwiftUI
import PhotosUI

struct PhotoPicker: View {
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImage: UIImage? = nil
    @Binding var characterViewModel: CharacterViewModel
    
    var body: some View {
        PhotosPicker(
            selection: $selectedItem,
            matching: .images,
            photoLibrary: .shared()
        ) {
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
            .background(
                RoundedRectangle(cornerRadius: 8.0)
                    .fill(Color.rpgBackgroundText)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8.0)
                    .stroke(Color.rpgStrokeChar, lineWidth: 1)
            )
        }
        .onChange(of: selectedItem) { newItem in
            Task {
                if let data = try? await newItem?.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    characterViewModel.newCharacter.image = uiImage
                }
            }
        }

    }
}

#Preview {
    PhotoPicker(characterViewModel: .constant(CharacterViewModel()))
}

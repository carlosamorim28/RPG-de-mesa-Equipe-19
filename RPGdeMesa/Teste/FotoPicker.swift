//
//  FotoPicker.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 10/01/25.
//

import SwiftUI
import PhotosUI

//struct ImagePickerViewView: View {
//    @State private var selectedItem: PhotosPickerItem? = nil
//    @State private var selectedImage: UIImage? = nil
//    
//    var body: some View {
//        VStack {
//            if let image = selectedImage {
//                Image(uiImage: image)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 200, height: 200)
//            } else {
//                Rectangle()
//                    .fill(Color.gray.opacity(0.4))
//                    .frame(width: 200, height: 200)
//                    .overlay(Text("Nenhuma imagem selecionada"))
//            }
//            
//            PhotosPicker(
//                selection: $selectedItem,
//                matching: .images,
//                photoLibrary: .shared()) {
//                    Text("Selecionar Imagem")
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                }
//                .onChange(of: selectedItem) { newItem in
//                    Task {
//                        if let data = try? await newItem?.loadTransferable(type: Data.self),
//                           let uiImage = UIImage(data: data) {
//                            selectedImage = uiImage
//                        }
//                    }
//                }
//        }
////        .padding()
//    }
//}
//
//#Preview {
//    ImagePickerViewView()
//}

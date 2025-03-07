//
//  ContentView.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var characterViewModel = CharacterViewModel()
    var body: some View {
        NavigationView{
            Home(characterViewModel: $characterViewModel)
        }
    }
}

#Preview {
    ContentView()
}
